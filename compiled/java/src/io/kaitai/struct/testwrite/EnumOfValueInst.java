// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.Map;
import java.util.HashMap;

public class EnumOfValueInst extends KaitaiStruct.ReadWrite {
    public static EnumOfValueInst fromFile(String fileName) throws IOException {
        return new EnumOfValueInst(new ByteBufferKaitaiStream(fileName));
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
    public EnumOfValueInst() {
        this(null, null, null);
    }

    public EnumOfValueInst(KaitaiStream _io) {
        this(_io, null, null);
    }

    public EnumOfValueInst(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public EnumOfValueInst(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, EnumOfValueInst _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.pet1 = Animal.byId(this._io.readU4le());
        this.pet2 = Animal.byId(this._io.readU4le());
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
        this._io.writeU4le(((Number) (this.pet1.id())).longValue());
        this._io.writeU4le(((Number) (this.pet2.id())).longValue());
    }

    public void _check() {
    }
    private Animal pet3;
    public Animal pet3() {
        if (this.pet3 != null)
            return this.pet3;
        this.pet3 = Animal.byId((pet1() == Animal.CAT ? 4 : 12));
        return this.pet3;
    }
    public void _invalidatePet3() { this.pet3 = null; }
    private Animal pet4;
    public Animal pet4() {
        if (this.pet4 != null)
            return this.pet4;
        this.pet4 = (pet1() == Animal.CAT ? Animal.DOG : Animal.CHICKEN);
        return this.pet4;
    }
    public void _invalidatePet4() { this.pet4 = null; }
    private Animal pet1;
    private Animal pet2;
    private EnumOfValueInst _root;
    private KaitaiStruct.ReadWrite _parent;
    public Animal pet1() { return pet1; }
    public void setPet1(Animal _v) { pet1 = _v; }
    public Animal pet2() { return pet2; }
    public void setPet2(Animal _v) { pet2 = _v; }
    public EnumOfValueInst _root() { return _root; }
    public void set_root(EnumOfValueInst _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
}
