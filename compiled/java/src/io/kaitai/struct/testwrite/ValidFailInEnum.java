// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.HashMap;
import io.kaitai.struct.IKaitaiEnum;

public class ValidFailInEnum extends KaitaiStruct.ReadWrite {
    public static ValidFailInEnum fromFile(String fileName) throws IOException {
        return new ValidFailInEnum(new ByteBufferKaitaiStream(fileName));
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
        CHICKEN(12);

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
    public ValidFailInEnum() {
        this(null, null, null);
    }

    public ValidFailInEnum(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ValidFailInEnum(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ValidFailInEnum(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ValidFailInEnum _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.foo = Animal.byId(this._io.readU4le());
        if (!(this.foo instanceof Animal)) {
            throw new KaitaiStream.ValidationNotInEnumError(this.foo, this._io, "/seq/0");
        }
        _dirty = false;
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._io.writeU4le(((Number) (this.foo.id())).longValue());
    }

    public void _check() {
        if (!(this.foo instanceof Animal)) {
            throw new KaitaiStream.ValidationNotInEnumError(this.foo, null, "/seq/0");
        }
        _dirty = false;
    }
    public IAnimal foo() { return foo; }
    public void setFoo(IAnimal _v) { _dirty = true; foo = _v; }
    public ValidFailInEnum _root() { return _root; }
    public void set_root(ValidFailInEnum _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    private IAnimal foo;
    private ValidFailInEnum _root;
    private KaitaiStruct.ReadWrite _parent;
}
