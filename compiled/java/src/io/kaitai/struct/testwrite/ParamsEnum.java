// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.Map;
import java.util.HashMap;
import java.util.Objects;
import io.kaitai.struct.ConsistencyError;

public class ParamsEnum extends KaitaiStruct.ReadWrite {
    public static ParamsEnum fromFile(String fileName) throws IOException {
        return new ParamsEnum(new ByteBufferKaitaiStream(fileName));
    }

    public enum Animal {
        DOG(4),
        CAT(7),
        CHICKEN(12);

        private final long id;
        Animal(long id) { this.id = id; }
        public long id() { return id; }
        private static final Map<Long, Animal> byId = new HashMap<Long, Animal>(3);
        static {
            for (Animal e : Animal.values())
                byId.put(e.id(), e);
        }
        public static Animal byId(long id) { return byId.get(id); }
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
    }

    public void _fetchInstances() {
        this.invokeWithParam._fetchInstances();
    }

    public void _write_Seq() {
        this._io.writeU1(((Number) (this.one.id())).intValue());
        this.invokeWithParam._write_Seq(this._io);
    }

    public void _check() {
        if (!Objects.equals(this.invokeWithParam._root(), _root()))
            throw new ConsistencyError("invoke_with_param", this.invokeWithParam._root(), _root());
        if (!Objects.equals(this.invokeWithParam._parent(), this))
            throw new ConsistencyError("invoke_with_param", this.invokeWithParam._parent(), this);
        if (this.invokeWithParam.enumeratedOne() != one())
            throw new ConsistencyError("invoke_with_param", this.invokeWithParam.enumeratedOne(), one());
    }
    public static class WithParam extends KaitaiStruct.ReadWrite {
        public WithParam(Animal enumeratedOne) {
            this(null, null, null, enumeratedOne);
        }

        public WithParam(KaitaiStream _io, Animal enumeratedOne) {
            this(_io, null, null, enumeratedOne);
        }

        public WithParam(KaitaiStream _io, ParamsEnum _parent, Animal enumeratedOne) {
            this(_io, _parent, null, enumeratedOne);
        }

        public WithParam(KaitaiStream _io, ParamsEnum _parent, ParamsEnum _root, Animal enumeratedOne) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            this.enumeratedOne = enumeratedOne;
        }
        public void _read() {
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
        }

        public void _check() {
        }
        private Boolean isCat;
        public Boolean isCat() {
            if (this.isCat != null)
                return this.isCat;
            this.isCat = enumeratedOne() == ParamsEnum.Animal.CAT;
            return this.isCat;
        }
        public void _invalidateIsCat() { this.isCat = null; }
        private Animal enumeratedOne;
        private ParamsEnum _root;
        private ParamsEnum _parent;
        public Animal enumeratedOne() { return enumeratedOne; }
        public void setEnumeratedOne(Animal _v) { enumeratedOne = _v; }
        public ParamsEnum _root() { return _root; }
        public void set_root(ParamsEnum _v) { _root = _v; }
        public ParamsEnum _parent() { return _parent; }
        public void set_parent(ParamsEnum _v) { _parent = _v; }
    }
    private Animal one;
    private WithParam invokeWithParam;
    private ParamsEnum _root;
    private KaitaiStruct.ReadWrite _parent;
    public Animal one() { return one; }
    public void setOne(Animal _v) { one = _v; }
    public WithParam invokeWithParam() { return invokeWithParam; }
    public void setInvokeWithParam(WithParam _v) { invokeWithParam = _v; }
    public ParamsEnum _root() { return _root; }
    public void set_root(ParamsEnum _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
}
