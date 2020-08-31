// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class ParamsPassBool extends KaitaiStruct {
    public static ParamsPassBool fromFile(String fileName) throws IOException {
        return new ParamsPassBool(new ByteBufferKaitaiStream(fileName));
    }

    public ParamsPassBool(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ParamsPassBool(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ParamsPassBool(KaitaiStream _io, KaitaiStruct _parent, ParamsPassBool _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.sFalse = this._io.readBitsIntBe(1) != 0;
        this.sTrue = this._io.readBitsIntBe(1) != 0;
        this._io.alignToByte();
        this.seqB1 = new ParamTypeB1(this._io, this, _root, sTrue());
        this.seqBool = new ParamTypeBool(this._io, this, _root, sFalse());
        this.literalB1 = new ParamTypeB1(this._io, this, _root, false);
        this.literalBool = new ParamTypeBool(this._io, this, _root, true);
        this.instB1 = new ParamTypeB1(this._io, this, _root, vTrue());
        this.instBool = new ParamTypeBool(this._io, this, _root, vFalse());
    }
    public static class ParamTypeB1 extends KaitaiStruct {

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
            _read();
        }
        private void _read() {
            this.foo = this._io.readBytes((arg() ? 1 : 2));
        }
        private byte[] foo;
        private boolean arg;
        private ParamsPassBool _root;
        private ParamsPassBool _parent;
        public byte[] foo() { return foo; }
        public boolean arg() { return arg; }
        public ParamsPassBool _root() { return _root; }
        public ParamsPassBool _parent() { return _parent; }
    }
    public static class ParamTypeBool extends KaitaiStruct {

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
            _read();
        }
        private void _read() {
            this.foo = this._io.readBytes((arg() ? 1 : 2));
        }
        private byte[] foo;
        private boolean arg;
        private ParamsPassBool _root;
        private ParamsPassBool _parent;
        public byte[] foo() { return foo; }
        public boolean arg() { return arg; }
        public ParamsPassBool _root() { return _root; }
        public ParamsPassBool _parent() { return _parent; }
    }
    private Boolean vFalse;
    public Boolean vFalse() {
        if (this.vFalse != null)
            return this.vFalse;
        boolean _tmp = (boolean) (false);
        this.vFalse = _tmp;
        return this.vFalse;
    }
    private Boolean vTrue;
    public Boolean vTrue() {
        if (this.vTrue != null)
            return this.vTrue;
        boolean _tmp = (boolean) (true);
        this.vTrue = _tmp;
        return this.vTrue;
    }
    private boolean sFalse;
    private boolean sTrue;
    private ParamTypeB1 seqB1;
    private ParamTypeBool seqBool;
    private ParamTypeB1 literalB1;
    private ParamTypeBool literalBool;
    private ParamTypeB1 instB1;
    private ParamTypeBool instBool;
    private ParamsPassBool _root;
    private KaitaiStruct _parent;
    public boolean sFalse() { return sFalse; }
    public boolean sTrue() { return sTrue; }
    public ParamTypeB1 seqB1() { return seqB1; }
    public ParamTypeBool seqBool() { return seqBool; }
    public ParamTypeB1 literalB1() { return literalB1; }
    public ParamTypeBool literalBool() { return literalBool; }
    public ParamTypeB1 instB1() { return instB1; }
    public ParamTypeBool instBool() { return instBool; }
    public ParamsPassBool _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
