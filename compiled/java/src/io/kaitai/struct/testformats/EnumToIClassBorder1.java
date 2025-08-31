// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.Map;
import java.util.HashMap;

public class EnumToIClassBorder1 extends KaitaiStruct {
    public static EnumToIClassBorder1 fromFile(String fileName) throws IOException {
        return new EnumToIClassBorder1(new ByteBufferKaitaiStream(fileName));
    }

    public enum Animal {
        DOG(4),
        CAT(7),
        CHICKEN(12);

        private final long id;
        Animal(long id) { this.id = id; }
        public long id() { return id; }
        private static final Map<Long, Animal> byId = new HashMap<Long, Animal>(3);
        static {
            for (Animal e : Animal.values())
                byId.put(e.id(), e);
        }
        public static Animal byId(long id) { return byId.get(id); }
    }

    public EnumToIClassBorder1(KaitaiStream _io) {
        this(_io, null, null);
    }

    public EnumToIClassBorder1(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public EnumToIClassBorder1(KaitaiStream _io, KaitaiStruct _parent, EnumToIClassBorder1 _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.pet1 = Animal.byId(this._io.readU4le());
        this.pet2 = Animal.byId(this._io.readU4le());
    }

    public void _fetchInstances() {
        checker();
        this.checker._fetchInstances();
    }
    private EnumToIClassBorder2 checker;
    public EnumToIClassBorder2 checker() {
        if (this.checker != null)
            return this.checker;
        long _pos = this._io.pos();
        this._io.seek(0);
        this.checker = new EnumToIClassBorder2(this._io, _root());
        this._io.seek(_pos);
        return this.checker;
    }
    private Animal someDog;
    public Animal someDog() {
        if (this.someDog != null)
            return this.someDog;
        this.someDog = Animal.byId(4);
        return this.someDog;
    }
    private Animal pet1;
    private Animal pet2;
    private EnumToIClassBorder1 _root;
    private KaitaiStruct _parent;
    public Animal pet1() { return pet1; }
    public Animal pet2() { return pet2; }
    public EnumToIClassBorder1 _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
