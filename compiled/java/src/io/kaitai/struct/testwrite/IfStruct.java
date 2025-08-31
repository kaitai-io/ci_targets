// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.Objects;
import io.kaitai.struct.ConsistencyError;
import java.nio.charset.StandardCharsets;
import java.nio.charset.Charset;

public class IfStruct extends KaitaiStruct.ReadWrite {
    public static IfStruct fromFile(String fileName) throws IOException {
        return new IfStruct(new ByteBufferKaitaiStream(fileName));
    }
    public IfStruct() {
        this(null, null, null);
    }

    public IfStruct(KaitaiStream _io) {
        this(_io, null, null);
    }

    public IfStruct(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public IfStruct(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, IfStruct _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.op1 = new Operation(this._io, this, _root);
        this.op1._read();
        this.op2 = new Operation(this._io, this, _root);
        this.op2._read();
        this.op3 = new Operation(this._io, this, _root);
        this.op3._read();
    }

    public void _fetchInstances() {
        this.op1._fetchInstances();
        this.op2._fetchInstances();
        this.op3._fetchInstances();
    }

    public void _write_Seq() {
        this.op1._write_Seq(this._io);
        this.op2._write_Seq(this._io);
        this.op3._write_Seq(this._io);
    }

    public void _check() {
        if (!Objects.equals(this.op1._root(), _root()))
            throw new ConsistencyError("op1", this.op1._root(), _root());
        if (!Objects.equals(this.op1._parent(), this))
            throw new ConsistencyError("op1", this.op1._parent(), this);
        if (!Objects.equals(this.op2._root(), _root()))
            throw new ConsistencyError("op2", this.op2._root(), _root());
        if (!Objects.equals(this.op2._parent(), this))
            throw new ConsistencyError("op2", this.op2._parent(), this);
        if (!Objects.equals(this.op3._root(), _root()))
            throw new ConsistencyError("op3", this.op3._root(), _root());
        if (!Objects.equals(this.op3._parent(), this))
            throw new ConsistencyError("op3", this.op3._parent(), this);
    }
    public static class ArgStr extends KaitaiStruct.ReadWrite {
        public static ArgStr fromFile(String fileName) throws IOException {
            return new ArgStr(new ByteBufferKaitaiStream(fileName));
        }
        public ArgStr() {
            this(null, null, null);
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
        }
        public void _read() {
            this.len = this._io.readU1();
            this.str = new String(this._io.readBytes(len()), StandardCharsets.UTF_8);
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            this._io.writeU1(this.len);
            this._io.writeBytes((this.str).getBytes(Charset.forName("UTF-8")));
        }

        public void _check() {
            if ((this.str).getBytes(Charset.forName("UTF-8")).length != len())
                throw new ConsistencyError("str", (this.str).getBytes(Charset.forName("UTF-8")).length, len());
        }
        private int len;
        private String str;
        private IfStruct _root;
        private IfStruct.Operation _parent;
        public int len() { return len; }
        public void setLen(int _v) { len = _v; }
        public String str() { return str; }
        public void setStr(String _v) { str = _v; }
        public IfStruct _root() { return _root; }
        public void set_root(IfStruct _v) { _root = _v; }
        public IfStruct.Operation _parent() { return _parent; }
        public void set_parent(IfStruct.Operation _v) { _parent = _v; }
    }
    public static class ArgTuple extends KaitaiStruct.ReadWrite {
        public static ArgTuple fromFile(String fileName) throws IOException {
            return new ArgTuple(new ByteBufferKaitaiStream(fileName));
        }
        public ArgTuple() {
            this(null, null, null);
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
        }
        public void _read() {
            this.num1 = this._io.readU1();
            this.num2 = this._io.readU1();
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            this._io.writeU1(this.num1);
            this._io.writeU1(this.num2);
        }

        public void _check() {
        }
        private int num1;
        private int num2;
        private IfStruct _root;
        private IfStruct.Operation _parent;
        public int num1() { return num1; }
        public void setNum1(int _v) { num1 = _v; }
        public int num2() { return num2; }
        public void setNum2(int _v) { num2 = _v; }
        public IfStruct _root() { return _root; }
        public void set_root(IfStruct _v) { _root = _v; }
        public IfStruct.Operation _parent() { return _parent; }
        public void set_parent(IfStruct.Operation _v) { _parent = _v; }
    }
    public static class Operation extends KaitaiStruct.ReadWrite {
        public static Operation fromFile(String fileName) throws IOException {
            return new Operation(new ByteBufferKaitaiStream(fileName));
        }
        public Operation() {
            this(null, null, null);
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
        }
        public void _read() {
            this.opcode = this._io.readU1();
            if (opcode() == 84) {
                this.argTuple = new ArgTuple(this._io, this, _root);
                this.argTuple._read();
            }
            if (opcode() == 83) {
                this.argStr = new ArgStr(this._io, this, _root);
                this.argStr._read();
            }
        }

        public void _fetchInstances() {
            if (opcode() == 84) {
                this.argTuple._fetchInstances();
            }
            if (opcode() == 83) {
                this.argStr._fetchInstances();
            }
        }

        public void _write_Seq() {
            this._io.writeU1(this.opcode);
            if (opcode() == 84) {
                this.argTuple._write_Seq(this._io);
            }
            if (opcode() == 83) {
                this.argStr._write_Seq(this._io);
            }
        }

        public void _check() {
            if (opcode() == 84) {
                if (!Objects.equals(this.argTuple._root(), _root()))
                    throw new ConsistencyError("arg_tuple", this.argTuple._root(), _root());
                if (!Objects.equals(this.argTuple._parent(), this))
                    throw new ConsistencyError("arg_tuple", this.argTuple._parent(), this);
            }
            if (opcode() == 83) {
                if (!Objects.equals(this.argStr._root(), _root()))
                    throw new ConsistencyError("arg_str", this.argStr._root(), _root());
                if (!Objects.equals(this.argStr._parent(), this))
                    throw new ConsistencyError("arg_str", this.argStr._parent(), this);
            }
        }
        private int opcode;
        private ArgTuple argTuple;
        private ArgStr argStr;
        private IfStruct _root;
        private IfStruct _parent;
        public int opcode() { return opcode; }
        public void setOpcode(int _v) { opcode = _v; }
        public ArgTuple argTuple() { return argTuple; }
        public void setArgTuple(ArgTuple _v) { argTuple = _v; }
        public ArgStr argStr() { return argStr; }
        public void setArgStr(ArgStr _v) { argStr = _v; }
        public IfStruct _root() { return _root; }
        public void set_root(IfStruct _v) { _root = _v; }
        public IfStruct _parent() { return _parent; }
        public void set_parent(IfStruct _v) { _parent = _v; }
    }
    private Operation op1;
    private Operation op2;
    private Operation op3;
    private IfStruct _root;
    private KaitaiStruct.ReadWrite _parent;
    public Operation op1() { return op1; }
    public void setOp1(Operation _v) { op1 = _v; }
    public Operation op2() { return op2; }
    public void setOp2(Operation _v) { op2 = _v; }
    public Operation op3() { return op3; }
    public void setOp3(Operation _v) { op3 = _v; }
    public IfStruct _root() { return _root; }
    public void set_root(IfStruct _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
}
