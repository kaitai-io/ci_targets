// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.HashMap;
import io.kaitai.struct.IKaitaiEnum;

public class EnumToIClassBorder1 extends KaitaiStruct {
    public static EnumToIClassBorder1 fromFile(String fileName) throws IOException {
        return new EnumToIClassBorder1(new ByteBufferKaitaiStream(fileName));
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
        if (this.checker != null) {
            this.checker._fetchInstances();
        }
    }
    public EnumToIClassBorder2 checker() {
        if (this.checker != null)
            return this.checker;
        long _pos = this._io.pos();
        this._io.seek(0);
        this.checker = new EnumToIClassBorder2(this._io, _root());
        this._io.seek(_pos);
        return this.checker;
    }
    public IAnimal someDog() {
        if (this.someDog != null)
            return this.someDog;
        this.someDog = Animal.byId(4);
        return this.someDog;
    }
    public IAnimal pet1() { return pet1; }
    public IAnimal pet2() { return pet2; }
    public EnumToIClassBorder1 _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private EnumToIClassBorder2 checker;
    private IAnimal someDog;
    private IAnimal pet1;
    private IAnimal pet2;
    private EnumToIClassBorder1 _root;
    private KaitaiStruct _parent;
}
