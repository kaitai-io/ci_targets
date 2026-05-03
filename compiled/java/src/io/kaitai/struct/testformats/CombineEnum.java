// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.HashMap;
import io.kaitai.struct.IKaitaiEnum;

public class CombineEnum extends KaitaiStruct {
    public static CombineEnum fromFile(String fileName) throws IOException {
        return new CombineEnum(new ByteBufferKaitaiStream(fileName));
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
        PIG(7),
        HORSE(12);

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

    public CombineEnum(KaitaiStream _io) {
        this(_io, null, null);
    }

    public CombineEnum(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public CombineEnum(KaitaiStream _io, KaitaiStruct _parent, CombineEnum _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.enumU4 = Animal.byId(this._io.readU4le());
        this.enumU2 = Animal.byId(this._io.readU2le());
    }

    public void _fetchInstances() {
    }
    public IAnimal enumU4U2() {
        if (this.enumU4U2 != null)
            return this.enumU4U2;
        this.enumU4U2 = (false ? enumU4() : enumU2());
        return this.enumU4U2;
    }
    public IAnimal enumU4() { return enumU4; }
    public IAnimal enumU2() { return enumU2; }
    public CombineEnum _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private IAnimal enumU4U2;
    private IAnimal enumU4;
    private IAnimal enumU2;
    private CombineEnum _root;
    private KaitaiStruct _parent;
}
