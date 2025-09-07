// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.Objects;
import io.kaitai.struct.ConsistencyError;

public class ParamsPassBool extends KaitaiStruct.ReadWrite {
    public static ParamsPassBool fromFile(String fileName) throws IOException {
        return new ParamsPassBool(new ByteBufferKaitaiStream(fileName));
    }
    public ParamsPassBool() {
        this(null, null, null);
    }

    public ParamsPassBool(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ParamsPassBool(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ParamsPassBool(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ParamsPassBool _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.sFalse = this._io.readBitsIntBe(1) != 0;
        this.sTrue = this._io.readBitsIntBe(1) != 0;
        this.seqB1 = new ParamTypeB1(this._io, this, _root, sTrue());
        this.seqB1._read();
        this.seqBool = new ParamTypeBool(this._io, this, _root, sFalse());
        this.seqBool._read();
        this.literalB1 = new ParamTypeB1(this._io, this, _root, false);
        this.literalB1._read();
        this.literalBool = new ParamTypeBool(this._io, this, _root, true);
        this.literalBool._read();
        this.instB1 = new ParamTypeB1(this._io, this, _root, vTrue());
        this.instB1._read();
        this.instBool = new ParamTypeBool(this._io, this, _root, vFalse());
        this.instBool._read();
        _dirty = false;
    }

    public void _fetchInstances() {
        this.seqB1._fetchInstances();
        this.seqBool._fetchInstances();
        this.literalB1._fetchInstances();
        this.literalBool._fetchInstances();
        this.instB1._fetchInstances();
        this.instBool._fetchInstances();
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._io.writeBitsIntBe(1, (this.sFalse ? 1 : 0));
        this._io.writeBitsIntBe(1, (this.sTrue ? 1 : 0));
        this.seqB1._write_Seq(this._io);
        this.seqBool._write_Seq(this._io);
        this.literalB1._write_Seq(this._io);
        this.literalBool._write_Seq(this._io);
        this.instB1._write_Seq(this._io);
        this.instBool._write_Seq(this._io);
    }

    public void _check() {
        if (!Objects.equals(this.seqB1._root(), _root()))
            throw new ConsistencyError("seq_b1", _root(), this.seqB1._root());
        if (!Objects.equals(this.seqB1._parent(), this))
            throw new ConsistencyError("seq_b1", this, this.seqB1._parent());
        if (this.seqB1.arg() != sTrue())
            throw new ConsistencyError("seq_b1", sTrue(), this.seqB1.arg());
        if (!Objects.equals(this.seqBool._root(), _root()))
            throw new ConsistencyError("seq_bool", _root(), this.seqBool._root());
        if (!Objects.equals(this.seqBool._parent(), this))
            throw new ConsistencyError("seq_bool", this, this.seqBool._parent());
        if (this.seqBool.arg() != sFalse())
            throw new ConsistencyError("seq_bool", sFalse(), this.seqBool.arg());
        if (!Objects.equals(this.literalB1._root(), _root()))
            throw new ConsistencyError("literal_b1", _root(), this.literalB1._root());
        if (!Objects.equals(this.literalB1._parent(), this))
            throw new ConsistencyError("literal_b1", this, this.literalB1._parent());
        if (this.literalB1.arg() != false)
            throw new ConsistencyError("literal_b1", false, this.literalB1.arg());
        if (!Objects.equals(this.literalBool._root(), _root()))
            throw new ConsistencyError("literal_bool", _root(), this.literalBool._root());
        if (!Objects.equals(this.literalBool._parent(), this))
            throw new ConsistencyError("literal_bool", this, this.literalBool._parent());
        if (this.literalBool.arg() != true)
            throw new ConsistencyError("literal_bool", true, this.literalBool.arg());
        if (!Objects.equals(this.instB1._root(), _root()))
            throw new ConsistencyError("inst_b1", _root(), this.instB1._root());
        if (!Objects.equals(this.instB1._parent(), this))
            throw new ConsistencyError("inst_b1", this, this.instB1._parent());
        if (this.instB1.arg() != vTrue())
            throw new ConsistencyError("inst_b1", vTrue(), this.instB1.arg());
        if (!Objects.equals(this.instBool._root(), _root()))
            throw new ConsistencyError("inst_bool", _root(), this.instBool._root());
        if (!Objects.equals(this.instBool._parent(), this))
            throw new ConsistencyError("inst_bool", this, this.instBool._parent());
        if (this.instBool.arg() != vFalse())
            throw new ConsistencyError("inst_bool", vFalse(), this.instBool.arg());
        _dirty = false;
    }
    public static class ParamTypeB1 extends KaitaiStruct.ReadWrite {
        public ParamTypeB1(boolean arg) {
            this(null, null, null, arg);
        }

        public ParamTypeB1(KaitaiStream _io, boolean arg) {
            this(_io, null, null, arg);
        }

        public ParamTypeB1(KaitaiStream _io, ParamsPassBool _parent, boolean arg) {
            this(_io, _parent, null, arg);
        }

        public ParamTypeB1(KaitaiStream _io, ParamsPassBool _parent, ParamsPassBool _root, boolean arg) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            this.arg = arg;
        }
        public void _read() {
            this.foo = this._io.readBytes((arg() ? 1 : 2));
            _dirty = false;
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            _assertNotDirty();
            this._io.writeBytes(this.foo);
        }

        public void _check() {
            if (this.foo.length != (arg() ? 1 : 2))
                throw new ConsistencyError("foo", (arg() ? 1 : 2), this.foo.length);
            _dirty = false;
        }
        private byte[] foo;
        private boolean arg;
        private ParamsPassBool _root;
        private ParamsPassBool _parent;
        public byte[] foo() { return foo; }
        public void setFoo(byte[] _v) { _dirty = true; foo = _v; }
        public boolean arg() { return arg; }
        public void setArg(boolean _v) { _dirty = true; arg = _v; }
        public ParamsPassBool _root() { return _root; }
        public void set_root(ParamsPassBool _v) { _dirty = true; _root = _v; }
        public ParamsPassBool _parent() { return _parent; }
        public void set_parent(ParamsPassBool _v) { _dirty = true; _parent = _v; }
    }
    public static class ParamTypeBool extends KaitaiStruct.ReadWrite {
        public ParamTypeBool(boolean arg) {
            this(null, null, null, arg);
        }

        public ParamTypeBool(KaitaiStream _io, boolean arg) {
            this(_io, null, null, arg);
        }

        public ParamTypeBool(KaitaiStream _io, ParamsPassBool _parent, boolean arg) {
            this(_io, _parent, null, arg);
        }

        public ParamTypeBool(KaitaiStream _io, ParamsPassBool _parent, ParamsPassBool _root, boolean arg) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            this.arg = arg;
        }
        public void _read() {
            this.foo = this._io.readBytes((arg() ? 1 : 2));
            _dirty = false;
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            _assertNotDirty();
            this._io.writeBytes(this.foo);
        }

        public void _check() {
            if (this.foo.length != (arg() ? 1 : 2))
                throw new ConsistencyError("foo", (arg() ? 1 : 2), this.foo.length);
            _dirty = false;
        }
        private byte[] foo;
        private boolean arg;
        private ParamsPassBool _root;
        private ParamsPassBool _parent;
        public byte[] foo() { return foo; }
        public void setFoo(byte[] _v) { _dirty = true; foo = _v; }
        public boolean arg() { return arg; }
        public void setArg(boolean _v) { _dirty = true; arg = _v; }
        public ParamsPassBool _root() { return _root; }
        public void set_root(ParamsPassBool _v) { _dirty = true; _root = _v; }
        public ParamsPassBool _parent() { return _parent; }
        public void set_parent(ParamsPassBool _v) { _dirty = true; _parent = _v; }
    }
    private Boolean vFalse;
    public Boolean vFalse() {
        if (this.vFalse != null)
            return this.vFalse;
        this.vFalse = false;
        return this.vFalse;
    }
    public void _invalidateVFalse() { this.vFalse = null; }
    private Boolean vTrue;
    public Boolean vTrue() {
        if (this.vTrue != null)
            return this.vTrue;
        this.vTrue = true;
        return this.vTrue;
    }
    public void _invalidateVTrue() { this.vTrue = null; }
    private boolean sFalse;
    private boolean sTrue;
    private ParamTypeB1 seqB1;
    private ParamTypeBool seqBool;
    private ParamTypeB1 literalB1;
    private ParamTypeBool literalBool;
    private ParamTypeB1 instB1;
    private ParamTypeBool instBool;
    private ParamsPassBool _root;
    private KaitaiStruct.ReadWrite _parent;
    public boolean sFalse() { return sFalse; }
    public void setSFalse(boolean _v) { _dirty = true; sFalse = _v; }
    public boolean sTrue() { return sTrue; }
    public void setSTrue(boolean _v) { _dirty = true; sTrue = _v; }
    public ParamTypeB1 seqB1() { return seqB1; }
    public void setSeqB1(ParamTypeB1 _v) { _dirty = true; seqB1 = _v; }
    public ParamTypeBool seqBool() { return seqBool; }
    public void setSeqBool(ParamTypeBool _v) { _dirty = true; seqBool = _v; }
    public ParamTypeB1 literalB1() { return literalB1; }
    public void setLiteralB1(ParamTypeB1 _v) { _dirty = true; literalB1 = _v; }
    public ParamTypeBool literalBool() { return literalBool; }
    public void setLiteralBool(ParamTypeBool _v) { _dirty = true; literalBool = _v; }
    public ParamTypeB1 instB1() { return instB1; }
    public void setInstB1(ParamTypeB1 _v) { _dirty = true; instB1 = _v; }
    public ParamTypeBool instBool() { return instBool; }
    public void setInstBool(ParamTypeBool _v) { _dirty = true; instBool = _v; }
    public ParamsPassBool _root() { return _root; }
    public void set_root(ParamsPassBool _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
