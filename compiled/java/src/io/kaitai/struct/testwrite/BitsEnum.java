// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.HashMap;
import io.kaitai.struct.IKaitaiEnum;

public class BitsEnum extends KaitaiStruct.ReadWrite {
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
    public BitsEnum() {
        this(null, null, null);
    }

    public BitsEnum(KaitaiStream _io) {
        this(_io, null, null);
    }

    public BitsEnum(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public BitsEnum(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, BitsEnum _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.one = Animal.byId(this._io.readBitsIntBe(4));
        this.two = Animal.byId(this._io.readBitsIntBe(8));
        this.three = Animal.byId(this._io.readBitsIntBe(1));
        _dirty = false;
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._io.writeBitsIntBe(4, ((Number) (this.one.id())).longValue());
        this._io.writeBitsIntBe(8, ((Number) (this.two.id())).longValue());
        this._io.writeBitsIntBe(1, ((Number) (this.three.id())).longValue());
    }

    public void _check() {
        _dirty = false;
    }
    public IAnimal one() { return one; }
    public void setOne(IAnimal _v) { _dirty = true; one = _v; }
    public IAnimal two() { return two; }
    public void setTwo(IAnimal _v) { _dirty = true; two = _v; }
    public IAnimal three() { return three; }
    public void setThree(IAnimal _v) { _dirty = true; three = _v; }
    public BitsEnum _root() { return _root; }
    public void set_root(BitsEnum _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    private IAnimal one;
    private IAnimal two;
    private IAnimal three;
    private BitsEnum _root;
    private KaitaiStruct.ReadWrite _parent;
}
