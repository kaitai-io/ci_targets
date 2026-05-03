// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.HashMap;
import io.kaitai.struct.IKaitaiEnum;

public class ParamsEnum extends KaitaiStruct {
    public static ParamsEnum fromFile(String fileName) throws IOException {
        return new ParamsEnum(new ByteBufferKaitaiStream(fileName));
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

    public ParamsEnum(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ParamsEnum(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ParamsEnum(KaitaiStream _io, KaitaiStruct _parent, ParamsEnum _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.one = Animal.byId(this._io.readU1());
        this.invokeWithParam = new WithParam(this._io, this, _root, one());
    }

    public void _fetchInstances() {
        this.invokeWithParam._fetchInstances();
    }
    public static class WithParam extends KaitaiStruct {

        public WithParam(KaitaiStream _io, IAnimal enumeratedOne) {
            this(_io, null, null, enumeratedOne);
        }

        public WithParam(KaitaiStream _io, ParamsEnum _parent, IAnimal enumeratedOne) {
            this(_io, _parent, null, enumeratedOne);
        }

        public WithParam(KaitaiStream _io, ParamsEnum _parent, ParamsEnum _root, IAnimal enumeratedOne) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            this.enumeratedOne = enumeratedOne;
            _read();
        }
        private void _read() {
        }

        public void _fetchInstances() {
        }
        public Boolean isCat() {
            if (this.isCat != null)
                return this.isCat;
            this.isCat = enumeratedOne() == ParamsEnum.Animal.CAT;
            return this.isCat;
        }
        public IAnimal enumeratedOne() { return enumeratedOne; }
        public ParamsEnum _root() { return _root; }
        public ParamsEnum _parent() { return _parent; }
        private Boolean isCat;
        private IAnimal enumeratedOne;
        private ParamsEnum _root;
        private ParamsEnum _parent;
    }
    public IAnimal one() { return one; }
    public WithParam invokeWithParam() { return invokeWithParam; }
    public ParamsEnum _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private IAnimal one;
    private WithParam invokeWithParam;
    private ParamsEnum _root;
    private KaitaiStruct _parent;
}
