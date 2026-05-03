// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.HashMap;
import io.kaitai.struct.IKaitaiEnum;
import java.util.Objects;
import io.kaitai.struct.ConsistencyError;

public class ParamsEnum extends KaitaiStruct.ReadWrite {
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
    public ParamsEnum() {
        this(null, null, null);
    }

    public ParamsEnum(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ParamsEnum(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ParamsEnum(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ParamsEnum _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.one = Animal.byId(this._io.readU1());
        this.invokeWithParam = new WithParam(this._io, this, _root, one());
        this.invokeWithParam._read();
        _dirty = false;
    }

    public void _fetchInstances() {
        this.invokeWithParam._fetchInstances();
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._io.writeU1(((Number) (this.one.id())).intValue());
        this.invokeWithParam._write_Seq(this._io);
    }

    public void _check() {
        if (!Objects.equals(this.invokeWithParam._root(), _root()))
            throw new ConsistencyError("invoke_with_param", _root(), this.invokeWithParam._root());
        if (!Objects.equals(this.invokeWithParam._parent(), this))
            throw new ConsistencyError("invoke_with_param", this, this.invokeWithParam._parent());
        if (this.invokeWithParam.enumeratedOne() != one())
            throw new ConsistencyError("invoke_with_param", one(), this.invokeWithParam.enumeratedOne());
        _dirty = false;
    }
    public static class WithParam extends KaitaiStruct.ReadWrite {
        public WithParam(IAnimal enumeratedOne) {
            this(null, null, null, enumeratedOne);
        }

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
        }
        public void _read() {
            _dirty = false;
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            _assertNotDirty();
        }

        public void _check() {
            _dirty = false;
        }
        public Boolean isCat() {
            if (this.isCat != null)
                return this.isCat;
            this.isCat = enumeratedOne() == ParamsEnum.Animal.CAT;
            return this.isCat;
        }
        public void _invalidateIsCat() { this.isCat = null; }
        public IAnimal enumeratedOne() { return enumeratedOne; }
        public void setEnumeratedOne(IAnimal _v) { _dirty = true; enumeratedOne = _v; }
        public ParamsEnum _root() { return _root; }
        public void set_root(ParamsEnum _v) { _dirty = true; _root = _v; }
        public ParamsEnum _parent() { return _parent; }
        public void set_parent(ParamsEnum _v) { _dirty = true; _parent = _v; }
        private Boolean isCat;
        private IAnimal enumeratedOne;
        private ParamsEnum _root;
        private ParamsEnum _parent;
    }
    public IAnimal one() { return one; }
    public void setOne(IAnimal _v) { _dirty = true; one = _v; }
    public WithParam invokeWithParam() { return invokeWithParam; }
    public void setInvokeWithParam(WithParam _v) { _dirty = true; invokeWithParam = _v; }
    public ParamsEnum _root() { return _root; }
    public void set_root(ParamsEnum _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    private IAnimal one;
    private WithParam invokeWithParam;
    private ParamsEnum _root;
    private KaitaiStruct.ReadWrite _parent;
}
