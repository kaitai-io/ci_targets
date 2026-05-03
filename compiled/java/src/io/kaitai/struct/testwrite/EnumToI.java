// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.HashMap;
import io.kaitai.struct.IKaitaiEnum;

public class EnumToI extends KaitaiStruct.ReadWrite {
    public static EnumToI fromFile(String fileName) throws IOException {
        return new EnumToI(new ByteBufferKaitaiStream(fileName));
    }

    public interface IAnimal extends IKaitaiEnum {
        public static final class Unknown extends IKaitaiEnum.Unknown implements IAnimal {
            Unknown(long id) { super(id); }

            @Override
            public String toString() { return "Animal(" + this.id + ")"; }

            @Override
            public int hashCode() {
                final int result = 31 + "Animal".hashCode();
                return 31 * result + Long.hashCode(this.id);
            }

            @Override
            public boolean equals(Object other) {
                return other instanceof IAnimal.Unknown && this.id == ((IAnimal.Unknown)other).id;
            }
        }
    }
    public enum Animal implements IAnimal {
        DOG(4),
        CAT(7),
        CHICKEN(12);

        private final long id;
        private static final HashMap<Long, IAnimal> variants = new HashMap<>(3);
        static {
            for (Animal e : values()) {
                variants.put(e.id, e);
            }
        }

        public static IAnimal byId(final long id) {
            return variants.computeIfAbsent(id, _id -> new IAnimal.Unknown(id));
        }

        private Animal(long id) { this.id = id; }

        @Override
        public long id() { return id; }
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
        _dirty = false;
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._io.writeU4le(((Number) (this.pet1.id())).longValue());
        this._io.writeU4le(((Number) (this.pet2.id())).longValue());
    }

    public void _check() {
        _dirty = false;
    }
    public Boolean oneLtTwo() {
        if (this.oneLtTwo != null)
            return this.oneLtTwo;
        this.oneLtTwo = pet1().id() < pet2().id();
        return this.oneLtTwo;
    }
    public void _invalidateOneLtTwo() { this.oneLtTwo = null; }
    public Boolean pet1EqInt() {
        if (this.pet1EqInt != null)
            return this.pet1EqInt;
        this.pet1EqInt = pet1().id() == 7;
        return this.pet1EqInt;
    }
    public void _invalidatePet1EqInt() { this.pet1EqInt = null; }
    public Integer pet1I() {
        if (this.pet1I != null)
            return this.pet1I;
        this.pet1I = ((Number) (pet1().id())).intValue();
        return this.pet1I;
    }
    public void _invalidatePet1I() { this.pet1I = null; }
    public String pet1IToS() {
        if (this.pet1IToS != null)
            return this.pet1IToS;
        this.pet1IToS = Long.toString(pet1().id());
        return this.pet1IToS;
    }
    public void _invalidatePet1IToS() { this.pet1IToS = null; }
    public Integer pet1Mod() {
        if (this.pet1Mod != null)
            return this.pet1Mod;
        this.pet1Mod = ((Number) (pet1().id() + 32768)).intValue();
        return this.pet1Mod;
    }
    public void _invalidatePet1Mod() { this.pet1Mod = null; }
    public Boolean pet2EqInt() {
        if (this.pet2EqInt != null)
            return this.pet2EqInt;
        this.pet2EqInt = pet2().id() == 5;
        return this.pet2EqInt;
    }
    public void _invalidatePet2EqInt() { this.pet2EqInt = null; }
    public IAnimal pet1() { return pet1; }
    public void setPet1(IAnimal _v) { _dirty = true; pet1 = _v; }
    public IAnimal pet2() { return pet2; }
    public void setPet2(IAnimal _v) { _dirty = true; pet2 = _v; }
    public EnumToI _root() { return _root; }
    public void set_root(EnumToI _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    private Boolean oneLtTwo;
    private Boolean pet1EqInt;
    private Integer pet1I;
    private String pet1IToS;
    private Integer pet1Mod;
    private Boolean pet2EqInt;
    private IAnimal pet1;
    private IAnimal pet2;
    private EnumToI _root;
    private KaitaiStruct.ReadWrite _parent;
}
