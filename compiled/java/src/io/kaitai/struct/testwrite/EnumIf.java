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
import java.nio.charset.StandardCharsets;
import java.nio.charset.Charset;

public class EnumIf extends KaitaiStruct.ReadWrite {
    public static EnumIf fromFile(String fileName) throws IOException {
        return new EnumIf(new ByteBufferKaitaiStream(fileName));
    }

    public enum Opcodes {
        A_STRING(83),
        A_TUPLE(84);

        private final long id;
        Opcodes(long id) { this.id = id; }
        public long id() { return id; }
        private static final Map<Long, Opcodes> byId = new HashMap<Long, Opcodes>(2);
        static {
            for (Opcodes e : Opcodes.values())
                byId.put(e.id(), e);
        }
        public static Opcodes byId(long id) { return byId.get(id); }
    }
    public EnumIf() {
        this(null, null, null);
    }

    public EnumIf(KaitaiStream _io) {
        this(_io, null, null);
    }

    public EnumIf(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public EnumIf(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, EnumIf _root) {
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

        public ArgStr(KaitaiStream _io, EnumIf.Operation _parent) {
            this(_io, _parent, null);
        }

        public ArgStr(KaitaiStream _io, EnumIf.Operation _parent, EnumIf _root) {
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
        private EnumIf _root;
        private EnumIf.Operation _parent;
        public int len() { return len; }
        public void setLen(int _v) { len = _v; }
        public String str() { return str; }
        public void setStr(String _v) { str = _v; }
        public EnumIf _root() { return _root; }
        public void set_root(EnumIf _v) { _root = _v; }
        public EnumIf.Operation _parent() { return _parent; }
        public void set_parent(EnumIf.Operation _v) { _parent = _v; }
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

        public ArgTuple(KaitaiStream _io, EnumIf.Operation _parent) {
            this(_io, _parent, null);
        }

        public ArgTuple(KaitaiStream _io, EnumIf.Operation _parent, EnumIf _root) {
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
        private EnumIf _root;
        private EnumIf.Operation _parent;
        public int num1() { return num1; }
        public void setNum1(int _v) { num1 = _v; }
        public int num2() { return num2; }
        public void setNum2(int _v) { num2 = _v; }
        public EnumIf _root() { return _root; }
        public void set_root(EnumIf _v) { _root = _v; }
        public EnumIf.Operation _parent() { return _parent; }
        public void set_parent(EnumIf.Operation _v) { _parent = _v; }
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

        public Operation(KaitaiStream _io, EnumIf _parent) {
            this(_io, _parent, null);
        }

        public Operation(KaitaiStream _io, EnumIf _parent, EnumIf _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.opcode = EnumIf.Opcodes.byId(this._io.readU1());
            if (opcode() == EnumIf.Opcodes.A_TUPLE) {
                this.argTuple = new ArgTuple(this._io, this, _root);
                this.argTuple._read();
            }
            if (opcode() == EnumIf.Opcodes.A_STRING) {
                this.argStr = new ArgStr(this._io, this, _root);
                this.argStr._read();
            }
        }

        public void _fetchInstances() {
            if (opcode() == EnumIf.Opcodes.A_TUPLE) {
                this.argTuple._fetchInstances();
            }
            if (opcode() == EnumIf.Opcodes.A_STRING) {
                this.argStr._fetchInstances();
            }
        }

        public void _write_Seq() {
            this._io.writeU1(((Number) (this.opcode.id())).intValue());
            if (opcode() == EnumIf.Opcodes.A_TUPLE) {
                this.argTuple._write_Seq(this._io);
            }
            if (opcode() == EnumIf.Opcodes.A_STRING) {
                this.argStr._write_Seq(this._io);
            }
        }

        public void _check() {
            if (opcode() == EnumIf.Opcodes.A_TUPLE) {
                if (!Objects.equals(this.argTuple._root(), _root()))
                    throw new ConsistencyError("arg_tuple", this.argTuple._root(), _root());
                if (!Objects.equals(this.argTuple._parent(), this))
                    throw new ConsistencyError("arg_tuple", this.argTuple._parent(), this);
            }
            if (opcode() == EnumIf.Opcodes.A_STRING) {
                if (!Objects.equals(this.argStr._root(), _root()))
                    throw new ConsistencyError("arg_str", this.argStr._root(), _root());
                if (!Objects.equals(this.argStr._parent(), this))
                    throw new ConsistencyError("arg_str", this.argStr._parent(), this);
            }
        }
        private Opcodes opcode;
        private ArgTuple argTuple;
        private ArgStr argStr;
        private EnumIf _root;
        private EnumIf _parent;
        public Opcodes opcode() { return opcode; }
        public void setOpcode(Opcodes _v) { opcode = _v; }
        public ArgTuple argTuple() { return argTuple; }
        public void setArgTuple(ArgTuple _v) { argTuple = _v; }
        public ArgStr argStr() { return argStr; }
        public void setArgStr(ArgStr _v) { argStr = _v; }
        public EnumIf _root() { return _root; }
        public void set_root(EnumIf _v) { _root = _v; }
        public EnumIf _parent() { return _parent; }
        public void set_parent(EnumIf _v) { _parent = _v; }
    }
    private Operation op1;
    private Operation op2;
    private Operation op3;
    private EnumIf _root;
    private KaitaiStruct.ReadWrite _parent;
    public Operation op1() { return op1; }
    public void setOp1(Operation _v) { op1 = _v; }
    public Operation op2() { return op2; }
    public void setOp2(Operation _v) { op2 = _v; }
    public Operation op3() { return op3; }
    public void setOp3(Operation _v) { op3 = _v; }
    public EnumIf _root() { return _root; }
    public void set_root(EnumIf _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
}
