// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.Map;
import java.util.HashMap;

public class EnumToI extends KaitaiStruct.ReadWrite {
    public static EnumToI fromFile(String fileName) throws IOException {
        return new EnumToI(new ByteBufferKaitaiStream(fileName));
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
    public EnumToI() {
        this(null, null, null);
    }

    public EnumToI(KaitaiStream _io) {
        this(_io, null, null);
    }

    public EnumToI(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public EnumToI(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, EnumToI _root) {
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
    private Boolean oneLtTwo;
    public Boolean oneLtTwo() {
        if (this.oneLtTwo != null)
            return this.oneLtTwo;
        this.oneLtTwo = pet1().id() < pet2().id();
        return this.oneLtTwo;
    }
    public void _invalidateOneLtTwo() { this.oneLtTwo = null; }
    private Boolean pet1EqInt;
    public Boolean pet1EqInt() {
        if (this.pet1EqInt != null)
            return this.pet1EqInt;
        this.pet1EqInt = pet1().id() == 7;
        return this.pet1EqInt;
    }
    public void _invalidatePet1EqInt() { this.pet1EqInt = null; }
    private Integer pet1I;
    public Integer pet1I() {
        if (this.pet1I != null)
            return this.pet1I;
        this.pet1I = ((Number) (pet1().id())).intValue();
        return this.pet1I;
    }
    public void _invalidatePet1I() { this.pet1I = null; }
    private String pet1IToS;
    public String pet1IToS() {
        if (this.pet1IToS != null)
            return this.pet1IToS;
        this.pet1IToS = Long.toString(pet1().id());
        return this.pet1IToS;
    }
    public void _invalidatePet1IToS() { this.pet1IToS = null; }
    private Integer pet1Mod;
    public Integer pet1Mod() {
        if (this.pet1Mod != null)
            return this.pet1Mod;
        this.pet1Mod = ((Number) (pet1().id() + 32768)).intValue();
        return this.pet1Mod;
    }
    public void _invalidatePet1Mod() { this.pet1Mod = null; }
    private Boolean pet2EqInt;
    public Boolean pet2EqInt() {
        if (this.pet2EqInt != null)
            return this.pet2EqInt;
        this.pet2EqInt = pet2().id() == 5;
        return this.pet2EqInt;
    }
    public void _invalidatePet2EqInt() { this.pet2EqInt = null; }
    private Animal pet1;
    private Animal pet2;
    private EnumToI _root;
    private KaitaiStruct.ReadWrite _parent;
    public Animal pet1() { return pet1; }
    public void setPet1(Animal _v) { pet1 = _v; }
    public Animal pet2() { return pet2; }
    public void setPet2(Animal _v) { pet2 = _v; }
    public EnumToI _root() { return _root; }
    public void set_root(EnumToI _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
}
