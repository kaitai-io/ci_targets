// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.HashMap;
import io.kaitai.struct.IKaitaiEnum;

public class EnumToIInvalid extends KaitaiStruct {
    public static EnumToIInvalid fromFile(String fileName) throws IOException {
        return new EnumToIInvalid(new ByteBufferKaitaiStream(fileName));
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
        DOG(102),
        CAT(124);

        private final long id;
        private static final HashMap<Long, IAnimal> variants = new HashMap<>(2);
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

    public EnumToIInvalid(KaitaiStream _io) {
        this(_io, null, null);
    }

    public EnumToIInvalid(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public EnumToIInvalid(KaitaiStream _io, KaitaiStruct _parent, EnumToIInvalid _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.pet1 = Animal.byId(this._io.readU1());
        this.pet2 = Animal.byId(this._io.readU1());
    }

    public void _fetchInstances() {
    }
    public Boolean oneLtTwo() {
        if (this.oneLtTwo != null)
            return this.oneLtTwo;
        this.oneLtTwo = pet1().id() < pet2().id();
        return this.oneLtTwo;
    }
    public Boolean pet2EqIntF() {
        if (this.pet2EqIntF != null)
            return this.pet2EqIntF;
        this.pet2EqIntF = pet2().id() == 110;
        return this.pet2EqIntF;
    }
    public Boolean pet2EqIntT() {
        if (this.pet2EqIntT != null)
            return this.pet2EqIntT;
        this.pet2EqIntT = pet2().id() == 111;
        return this.pet2EqIntT;
    }
    public Integer pet2I() {
        if (this.pet2I != null)
            return this.pet2I;
        this.pet2I = ((Number) (pet2().id())).intValue();
        return this.pet2I;
    }
    public String pet2IToS() {
        if (this.pet2IToS != null)
            return this.pet2IToS;
        this.pet2IToS = Long.toString(pet2().id());
        return this.pet2IToS;
    }
    public Integer pet2Mod() {
        if (this.pet2Mod != null)
            return this.pet2Mod;
        this.pet2Mod = ((Number) (pet2().id() + 32768)).intValue();
        return this.pet2Mod;
    }
    public IAnimal pet1() { return pet1; }
    public IAnimal pet2() { return pet2; }
    public EnumToIInvalid _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private Boolean oneLtTwo;
    private Boolean pet2EqIntF;
    private Boolean pet2EqIntT;
    private Integer pet2I;
    private String pet2IToS;
    private Integer pet2Mod;
    private IAnimal pet1;
    private IAnimal pet2;
    private EnumToIInvalid _root;
    private KaitaiStruct _parent;
}
