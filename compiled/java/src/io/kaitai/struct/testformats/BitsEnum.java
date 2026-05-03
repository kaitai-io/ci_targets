// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.HashMap;
import io.kaitai.struct.IKaitaiEnum;

public class BitsEnum extends KaitaiStruct {
    public static BitsEnum fromFile(String fileName) throws IOException {
        return new BitsEnum(new ByteBufferKaitaiStream(fileName));
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
        CAT(0),
        DOG(1),
        HORSE(4),
        PLATYPUS(5);

        private final long id;
        private static final HashMap<Long, IAnimal> variants = new HashMap<>(4);
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

    public BitsEnum(KaitaiStream _io) {
        this(_io, null, null);
    }

    public BitsEnum(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public BitsEnum(KaitaiStream _io, KaitaiStruct _parent, BitsEnum _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.one = Animal.byId(this._io.readBitsIntBe(4));
        this.two = Animal.byId(this._io.readBitsIntBe(8));
        this.three = Animal.byId(this._io.readBitsIntBe(1));
    }

    public void _fetchInstances() {
    }
    public IAnimal one() { return one; }
    public IAnimal two() { return two; }
    public IAnimal three() { return three; }
    public BitsEnum _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private IAnimal one;
    private IAnimal two;
    private IAnimal three;
    private BitsEnum _root;
    private KaitaiStruct _parent;
}
