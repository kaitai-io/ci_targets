// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.Map;
import java.util.HashMap;
import java.util.Objects;
import io.kaitai.struct.ConsistencyError;

public class EnumToIClassBorder1 extends KaitaiStruct.ReadWrite {
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
    public EnumToIClassBorder1() {
        this(null, null, null);
    }

    public EnumToIClassBorder1(KaitaiStream _io) {
        this(_io, null, null);
    }

    public EnumToIClassBorder1(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public EnumToIClassBorder1(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, EnumToIClassBorder1 _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.pet1 = Animal.byId(this._io.readU4le());
        this.pet2 = Animal.byId(this._io.readU4le());
    }

    public void _fetchInstances() {
        checker();
        this.checker._fetchInstances();
    }

    public void _write_Seq() {
        _writeChecker = _toWriteChecker;
        this._io.writeU4le(((Number) (this.pet1.id())).longValue());
        this._io.writeU4le(((Number) (this.pet2.id())).longValue());
    }

    public void _check() {
    }
    private EnumToIClassBorder2 checker;
    private boolean _writeChecker = false;
    private boolean _toWriteChecker = true;
    public EnumToIClassBorder2 checker() {
        if (_writeChecker)
            _writeChecker();
        if (this.checker != null)
            return this.checker;
        long _pos = this._io.pos();
        this._io.seek(0);
        this.checker = new EnumToIClassBorder2(this._io, _root());
        this.checker._read();
        this._io.seek(_pos);
        return this.checker;
    }
    public void setChecker(EnumToIClassBorder2 _v) { checker = _v; }
    public void setChecker_ToWrite(boolean _v) { _toWriteChecker = _v; }

    public void _writeChecker() {
        _writeChecker = false;
        long _pos = this._io.pos();
        this._io.seek(0);
        this.checker._write_Seq(this._io);
        this._io.seek(_pos);
    }

    public void _checkChecker() {
        if (!Objects.equals(this.checker.parent(), _root()))
            throw new ConsistencyError("checker", this.checker.parent(), _root());
    }
    private Animal someDog;
    public Animal someDog() {
        if (this.someDog != null)
            return this.someDog;
        this.someDog = Animal.byId(4);
        return this.someDog;
    }
    public void _invalidateSomeDog() { this.someDog = null; }
    private Animal pet1;
    private Animal pet2;
    private EnumToIClassBorder1 _root;
    private KaitaiStruct.ReadWrite _parent;
    public Animal pet1() { return pet1; }
    public void setPet1(Animal _v) { pet1 = _v; }
    public Animal pet2() { return pet2; }
    public void setPet2(Animal _v) { pet2 = _v; }
    public EnumToIClassBorder1 _root() { return _root; }
    public void set_root(EnumToIClassBorder1 _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
}
