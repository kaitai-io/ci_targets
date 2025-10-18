// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.Map;
import java.util.HashMap;

public class CombineEnum extends KaitaiStruct {
    public static CombineEnum fromFile(String fileName) throws IOException {
        return new CombineEnum(new ByteBufferKaitaiStream(fileName));
    }

    public enum Animal {
        PIG(7),
        HORSE(12);

        private final long id;
        Animal(long id) { this.id = id; }
        public long id() { return id; }
        private static final Map<Long, Animal> byId = new HashMap<Long, Animal>(2);
        static {
            for (Animal e : Animal.values())
                byId.put(e.id(), e);
        }
        public static Animal byId(long id) { return byId.get(id); }
    }

    public CombineEnum(KaitaiStream _io) {
        this(_io, null, null);
    }

    public CombineEnum(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public CombineEnum(KaitaiStream _io, KaitaiStruct _parent, CombineEnum _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.enumU4 = Animal.byId(this._io.readU4le());
        this.enumU2 = Animal.byId(this._io.readU2le());
    }

    public void _fetchInstances() {
    }
    public Animal enumU4U2() {
        if (this.enumU4U2 != null)
            return this.enumU4U2;
        this.enumU4U2 = (false ? enumU4() : enumU2());
        return this.enumU4U2;
    }
    public Animal enumU4() { return enumU4; }
    public Animal enumU2() { return enumU2; }
    public CombineEnum _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private Animal enumU4U2;
    private Animal enumU4;
    private Animal enumU2;
    private CombineEnum _root;
    private KaitaiStruct _parent;
}
