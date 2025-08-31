// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.Map;
import java.util.HashMap;

public class EnumToIInvalid extends KaitaiStruct.ReadWrite {
    public static EnumToIInvalid fromFile(String fileName) throws IOException {
        return new EnumToIInvalid(new ByteBufferKaitaiStream(fileName));
    }

    public enum Animal {
        DOG(102),
        CAT(124);

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
    public EnumToIInvalid() {
        this(null, null, null);
    }

    public EnumToIInvalid(KaitaiStream _io) {
        this(_io, null, null);
    }

    public EnumToIInvalid(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public EnumToIInvalid(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, EnumToIInvalid _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.pet1 = Animal.byId(this._io.readU1());
        this.pet2 = Animal.byId(this._io.readU1());
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
        this._io.writeU1(((Number) (this.pet1.id())).intValue());
        this._io.writeU1(((Number) (this.pet2.id())).intValue());
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
    private Boolean pet2EqIntF;
    public Boolean pet2EqIntF() {
        if (this.pet2EqIntF != null)
            return this.pet2EqIntF;
        this.pet2EqIntF = pet2().id() == 110;
        return this.pet2EqIntF;
    }
    public void _invalidatePet2EqIntF() { this.pet2EqIntF = null; }
    private Boolean pet2EqIntT;
    public Boolean pet2EqIntT() {
        if (this.pet2EqIntT != null)
            return this.pet2EqIntT;
        this.pet2EqIntT = pet2().id() == 111;
        return this.pet2EqIntT;
    }
    public void _invalidatePet2EqIntT() { this.pet2EqIntT = null; }
    private Integer pet2I;
    public Integer pet2I() {
        if (this.pet2I != null)
            return this.pet2I;
        this.pet2I = ((Number) (pet2().id())).intValue();
        return this.pet2I;
    }
    public void _invalidatePet2I() { this.pet2I = null; }
    private String pet2IToS;
    public String pet2IToS() {
        if (this.pet2IToS != null)
            return this.pet2IToS;
        this.pet2IToS = Long.toString(pet2().id());
        return this.pet2IToS;
    }
    public void _invalidatePet2IToS() { this.pet2IToS = null; }
    private Integer pet2Mod;
    public Integer pet2Mod() {
        if (this.pet2Mod != null)
            return this.pet2Mod;
        this.pet2Mod = ((Number) (pet2().id() + 32768)).intValue();
        return this.pet2Mod;
    }
    public void _invalidatePet2Mod() { this.pet2Mod = null; }
    private Animal pet1;
    private Animal pet2;
    private EnumToIInvalid _root;
    private KaitaiStruct.ReadWrite _parent;
    public Animal pet1() { return pet1; }
    public void setPet1(Animal _v) { pet1 = _v; }
    public Animal pet2() { return pet2; }
    public void setPet2(Animal _v) { pet2 = _v; }
    public EnumToIInvalid _root() { return _root; }
    public void set_root(EnumToIInvalid _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
}
