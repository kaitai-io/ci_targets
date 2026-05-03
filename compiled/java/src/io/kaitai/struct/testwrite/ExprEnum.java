// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.HashMap;
import io.kaitai.struct.IKaitaiEnum;

public class ExprEnum extends KaitaiStruct.ReadWrite {
    public static ExprEnum fromFile(String fileName) throws IOException {
        return new ExprEnum(new ByteBufferKaitaiStream(fileName));
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
        CHICKEN(12),
        BOOM(102);

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
    public ExprEnum() {
        this(null, null, null);
    }

    public ExprEnum(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ExprEnum(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ExprEnum(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ExprEnum _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.one = this._io.readU1();
        _dirty = false;
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._io.writeU1(this.one);
    }

    public void _check() {
        _dirty = false;
    }
    public IAnimal constDog() {
        if (this.constDog != null)
            return this.constDog;
        this.constDog = Animal.byId(4);
        return this.constDog;
    }
    public void _invalidateConstDog() { this.constDog = null; }
    public IAnimal derivedBoom() {
        if (this.derivedBoom != null)
            return this.derivedBoom;
        this.derivedBoom = Animal.byId(one());
        return this.derivedBoom;
    }
    public void _invalidateDerivedBoom() { this.derivedBoom = null; }
    public IAnimal derivedDog() {
        if (this.derivedDog != null)
            return this.derivedDog;
        this.derivedDog = Animal.byId(one() - 98);
        return this.derivedDog;
    }
    public void _invalidateDerivedDog() { this.derivedDog = null; }
    public int one() { return one; }
    public void setOne(int _v) { _dirty = true; one = _v; }
    public ExprEnum _root() { return _root; }
    public void set_root(ExprEnum _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    private IAnimal constDog;
    private IAnimal derivedBoom;
    private IAnimal derivedDog;
    private int one;
    private ExprEnum _root;
    private KaitaiStruct.ReadWrite _parent;
}
