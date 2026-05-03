// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.HashMap;
import io.kaitai.struct.IKaitaiEnum;

public class ValidFailInEnum extends KaitaiStruct {
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

    public ValidFailInEnum(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ValidFailInEnum(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ValidFailInEnum(KaitaiStream _io, KaitaiStruct _parent, ValidFailInEnum _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.foo = Animal.byId(this._io.readU4le());
        if (!(this.foo instanceof Animal)) {
            throw new KaitaiStream.ValidationNotInEnumError(this.foo, this._io, "/seq/0");
        }
    }

    public void _fetchInstances() {
    }
    public IAnimal foo() { return foo; }
    public ValidFailInEnum _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private IAnimal foo;
    private ValidFailInEnum _root;
    private KaitaiStruct _parent;
}
