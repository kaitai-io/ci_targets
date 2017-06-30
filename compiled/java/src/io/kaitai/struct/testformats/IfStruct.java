// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.nio.charset.Charset;

public class IfStruct extends KaitaiStruct {
    public static IfStruct fromFile(String fileName) throws IOException {
        return new IfStruct(new KaitaiStream(fileName));
    }

    public IfStruct(KaitaiStream _io) {
        this(_io, null, null);
    }

    public IfStruct(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public IfStruct(KaitaiStream _io, KaitaiStruct _parent, IfStruct _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.op1 = new Operation(this._io, this, _root);
        this.op2 = new Operation(this._io, this, _root);
        this.op3 = new Operation(this._io, this, _root);
    }
    public static class Operation extends KaitaiStruct {
        public static Operation fromFile(String fileName) throws IOException {
            return new Operation(new KaitaiStream(fileName));
        }

        public Operation(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Operation(KaitaiStream _io, IfStruct _parent) {
            this(_io, _parent, null);
        }

        public Operation(KaitaiStream _io, IfStruct _parent, IfStruct _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.opcode = this._io.readU1();
            if (opcode() == 84) {
                this.argTuple = new ArgTuple(this._io, this, _root);
            }
            if (opcode() == 83) {
                this.argStr = new ArgStr(this._io, this, _root);
            }
        }
        private int opcode;
        private ArgTuple argTuple;
        private ArgStr argStr;
        private IfStruct _root;
        private IfStruct _parent;
        public int opcode() { return opcode; }
        public ArgTuple argTuple() { return argTuple; }
        public ArgStr argStr() { return argStr; }
        public IfStruct _root() { return _root; }
        public IfStruct _parent() { return _parent; }
    }
    public static class ArgTuple extends KaitaiStruct {
        public static ArgTuple fromFile(String fileName) throws IOException {
            return new ArgTuple(new KaitaiStream(fileName));
        }

        public ArgTuple(KaitaiStream _io) {
            this(_io, null, null);
        }

        public ArgTuple(KaitaiStream _io, IfStruct.Operation _parent) {
            this(_io, _parent, null);
        }

        public ArgTuple(KaitaiStream _io, IfStruct.Operation _parent, IfStruct _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.num1 = this._io.readU1();
            this.num2 = this._io.readU1();
        }
        private int num1;
        private int num2;
        private IfStruct _root;
        private IfStruct.Operation _parent;
        public int num1() { return num1; }
        public int num2() { return num2; }
        public IfStruct _root() { return _root; }
        public IfStruct.Operation _parent() { return _parent; }
    }
    public static class ArgStr extends KaitaiStruct {
        public static ArgStr fromFile(String fileName) throws IOException {
            return new ArgStr(new KaitaiStream(fileName));
        }

        public ArgStr(KaitaiStream _io) {
            this(_io, null, null);
        }

        public ArgStr(KaitaiStream _io, IfStruct.Operation _parent) {
            this(_io, _parent, null);
        }

        public ArgStr(KaitaiStream _io, IfStruct.Operation _parent, IfStruct _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.len = this._io.readU1();
            this.str = new String(this._io.readBytes(len()), Charset.forName("UTF-8"));
        }
        private int len;
        private String str;
        private IfStruct _root;
        private IfStruct.Operation _parent;
        public int len() { return len; }
        public String str() { return str; }
        public IfStruct _root() { return _root; }
        public IfStruct.Operation _parent() { return _parent; }
    }
    private Operation op1;
    private Operation op2;
    private Operation op3;
    private IfStruct _root;
    private KaitaiStruct _parent;
    public Operation op1() { return op1; }
    public Operation op2() { return op2; }
    public Operation op3() { return op3; }
    public IfStruct _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
