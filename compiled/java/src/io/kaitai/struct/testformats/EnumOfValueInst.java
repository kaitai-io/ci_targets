// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.HashMap;
import io.kaitai.struct.IKaitaiEnum;

public class EnumOfValueInst extends KaitaiStruct {
    public static EnumOfValueInst fromFile(String fileName) throws IOException {
        return new EnumOfValueInst(new ByteBufferKaitaiStream(fileName));
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

    public EnumOfValueInst(KaitaiStream _io) {
        this(_io, null, null);
    }

    public EnumOfValueInst(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public EnumOfValueInst(KaitaiStream _io, KaitaiStruct _parent, EnumOfValueInst _root) {
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
    }
    public IAnimal pet3() {
        if (this.pet3 != null)
            return this.pet3;
        this.pet3 = Animal.byId((pet1() == Animal.CAT ? 4 : 12));
        return this.pet3;
    }
    public IAnimal pet4() {
        if (this.pet4 != null)
            return this.pet4;
        this.pet4 = (pet1() == Animal.CAT ? Animal.DOG : Animal.CHICKEN);
        return this.pet4;
    }
    public IAnimal pet1() { return pet1; }
    public IAnimal pet2() { return pet2; }
    public EnumOfValueInst _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private IAnimal pet3;
    private IAnimal pet4;
    private IAnimal pet1;
    private IAnimal pet2;
    private EnumOfValueInst _root;
    private KaitaiStruct _parent;
}
