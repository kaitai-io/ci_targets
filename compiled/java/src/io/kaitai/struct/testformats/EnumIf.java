// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.Map;
import java.util.HashMap;
import java.nio.charset.StandardCharsets;

public class EnumIf extends KaitaiStruct {
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

    public EnumIf(KaitaiStream _io) {
        this(_io, null, null);
    }

    public EnumIf(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public EnumIf(KaitaiStream _io, KaitaiStruct _parent, EnumIf _root) {
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

    public void _fetchInstances() {
        this.op1._fetchInstances();
        this.op2._fetchInstances();
        this.op3._fetchInstances();
    }
    public static class ArgStr extends KaitaiStruct {
        public static ArgStr fromFile(String fileName) throws IOException {
            return new ArgStr(new ByteBufferKaitaiStream(fileName));
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
            _read();
        }
        private void _read() {
            this.len = this._io.readU1();
            this.str = new String(this._io.readBytes(len()), StandardCharsets.UTF_8);
        }

        public void _fetchInstances() {
        }
        public int len() { return len; }
        public String str() { return str; }
        public EnumIf _root() { return _root; }
        public EnumIf.Operation _parent() { return _parent; }
        private int len;
        private String str;
        private EnumIf _root;
        private EnumIf.Operation _parent;
    }
    public static class ArgTuple extends KaitaiStruct {
        public static ArgTuple fromFile(String fileName) throws IOException {
            return new ArgTuple(new ByteBufferKaitaiStream(fileName));
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
            _read();
        }
        private void _read() {
            this.num1 = this._io.readU1();
            this.num2 = this._io.readU1();
        }

        public void _fetchInstances() {
        }
        public int num1() { return num1; }
        public int num2() { return num2; }
        public EnumIf _root() { return _root; }
        public EnumIf.Operation _parent() { return _parent; }
        private int num1;
        private int num2;
        private EnumIf _root;
        private EnumIf.Operation _parent;
    }
    public static class Operation extends KaitaiStruct {
        public static Operation fromFile(String fileName) throws IOException {
            return new Operation(new ByteBufferKaitaiStream(fileName));
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
            _read();
        }
        private void _read() {
            this.opcode = EnumIf.Opcodes.byId(this._io.readU1());
            if (opcode() == EnumIf.Opcodes.A_TUPLE) {
                this.argTuple = new ArgTuple(this._io, this, _root);
            }
            if (opcode() == EnumIf.Opcodes.A_STRING) {
                this.argStr = new ArgStr(this._io, this, _root);
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
        public Opcodes opcode() { return opcode; }
        public ArgTuple argTuple() { return argTuple; }
        public ArgStr argStr() { return argStr; }
        public EnumIf _root() { return _root; }
        public EnumIf _parent() { return _parent; }
        private Opcodes opcode;
        private ArgTuple argTuple;
        private ArgStr argStr;
        private EnumIf _root;
        private EnumIf _parent;
    }
    public Operation op1() { return op1; }
    public Operation op2() { return op2; }
    public Operation op3() { return op3; }
    public EnumIf _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private Operation op1;
    private Operation op2;
    private Operation op3;
    private EnumIf _root;
    private KaitaiStruct _parent;
}
