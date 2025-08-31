// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import io.kaitai.struct.ConsistencyError;
import java.util.Objects;
import java.util.Arrays;
import java.nio.charset.StandardCharsets;
import java.nio.charset.Charset;
import java.util.List;

public class SwitchBytearray extends KaitaiStruct.ReadWrite {
    public static SwitchBytearray fromFile(String fileName) throws IOException {
        return new SwitchBytearray(new ByteBufferKaitaiStream(fileName));
    }
    public SwitchBytearray() {
        this(null, null, null);
    }

    public SwitchBytearray(KaitaiStream _io) {
        this(_io, null, null);
    }

    public SwitchBytearray(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public SwitchBytearray(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, SwitchBytearray _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.opcodes = new ArrayList<Opcode>();
        {
            int i = 0;
            while (!this._io.isEof()) {
                Opcode _t_opcodes = new Opcode(this._io, this, _root);
                try {
                    _t_opcodes._read();
                } finally {
                    this.opcodes.add(_t_opcodes);
                }
                i++;
            }
        }
    }

    public void _fetchInstances() {
        for (int i = 0; i < this.opcodes.size(); i++) {
            this.opcodes.get(((Number) (i)).intValue())._fetchInstances();
        }
    }

    public void _write_Seq() {
        for (int i = 0; i < this.opcodes.size(); i++) {
            if (this._io.isEof())
                throw new ConsistencyError("opcodes", this._io.size() - this._io.pos(), 0);
            this.opcodes.get(((Number) (i)).intValue())._write_Seq(this._io);
        }
        if (!(this._io.isEof()))
            throw new ConsistencyError("opcodes", this._io.size() - this._io.pos(), 0);
    }

    public void _check() {
        for (int i = 0; i < this.opcodes.size(); i++) {
            if (!Objects.equals(this.opcodes.get(((Number) (i)).intValue())._root(), _root()))
                throw new ConsistencyError("opcodes", this.opcodes.get(((Number) (i)).intValue())._root(), _root());
            if (!Objects.equals(this.opcodes.get(((Number) (i)).intValue())._parent(), this))
                throw new ConsistencyError("opcodes", this.opcodes.get(((Number) (i)).intValue())._parent(), this);
        }
    }
    public static class Opcode extends KaitaiStruct.ReadWrite {
        public static Opcode fromFile(String fileName) throws IOException {
            return new Opcode(new ByteBufferKaitaiStream(fileName));
        }
        public Opcode() {
            this(null, null, null);
        }

        public Opcode(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Opcode(KaitaiStream _io, SwitchBytearray _parent) {
            this(_io, _parent, null);
        }

        public Opcode(KaitaiStream _io, SwitchBytearray _parent, SwitchBytearray _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.code = this._io.readBytes(1);
            {
                byte[] on = code();
                if (Arrays.equals(on, new byte[] { 73 })) {
                    this.body = new Intval(this._io, this, _root);
                    ((Intval) (this.body))._read();
                }
                else if (Arrays.equals(on, new byte[] { 83 })) {
                    this.body = new Strval(this._io, this, _root);
                    ((Strval) (this.body))._read();
                }
            }
        }

        public void _fetchInstances() {
            {
                byte[] on = code();
                if (Arrays.equals(on, new byte[] { 73 })) {
                    ((Intval) (this.body))._fetchInstances();
                }
                else if (Arrays.equals(on, new byte[] { 83 })) {
                    ((Strval) (this.body))._fetchInstances();
                }
            }
        }

        public void _write_Seq() {
            this._io.writeBytes(this.code);
            {
                byte[] on = code();
                if (Arrays.equals(on, new byte[] { 73 })) {
                    ((Intval) (this.body))._write_Seq(this._io);
                }
                else if (Arrays.equals(on, new byte[] { 83 })) {
                    ((Strval) (this.body))._write_Seq(this._io);
                }
            }
        }

        public void _check() {
            if (this.code.length != 1)
                throw new ConsistencyError("code", this.code.length, 1);
            {
                byte[] on = code();
                if (Arrays.equals(on, new byte[] { 73 })) {
                    if (!Objects.equals(((SwitchBytearray.Opcode.Intval) (this.body))._root(), _root()))
                        throw new ConsistencyError("body", ((SwitchBytearray.Opcode.Intval) (this.body))._root(), _root());
                    if (!Objects.equals(((SwitchBytearray.Opcode.Intval) (this.body))._parent(), this))
                        throw new ConsistencyError("body", ((SwitchBytearray.Opcode.Intval) (this.body))._parent(), this);
                }
                else if (Arrays.equals(on, new byte[] { 83 })) {
                    if (!Objects.equals(((SwitchBytearray.Opcode.Strval) (this.body))._root(), _root()))
                        throw new ConsistencyError("body", ((SwitchBytearray.Opcode.Strval) (this.body))._root(), _root());
                    if (!Objects.equals(((SwitchBytearray.Opcode.Strval) (this.body))._parent(), this))
                        throw new ConsistencyError("body", ((SwitchBytearray.Opcode.Strval) (this.body))._parent(), this);
                }
            }
        }
        public static class Intval extends KaitaiStruct.ReadWrite {
            public static Intval fromFile(String fileName) throws IOException {
                return new Intval(new ByteBufferKaitaiStream(fileName));
            }
            public Intval() {
                this(null, null, null);
            }

            public Intval(KaitaiStream _io) {
                this(_io, null, null);
            }

            public Intval(KaitaiStream _io, SwitchBytearray.Opcode _parent) {
                this(_io, _parent, null);
            }

            public Intval(KaitaiStream _io, SwitchBytearray.Opcode _parent, SwitchBytearray _root) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
            }
            public void _read() {
                this.value = this._io.readU1();
            }

            public void _fetchInstances() {
            }

            public void _write_Seq() {
                this._io.writeU1(this.value);
            }

            public void _check() {
            }
            private int value;
            private SwitchBytearray _root;
            private SwitchBytearray.Opcode _parent;
            public int value() { return value; }
            public void setValue(int _v) { value = _v; }
            public SwitchBytearray _root() { return _root; }
            public void set_root(SwitchBytearray _v) { _root = _v; }
            public SwitchBytearray.Opcode _parent() { return _parent; }
            public void set_parent(SwitchBytearray.Opcode _v) { _parent = _v; }
        }
        public static class Strval extends KaitaiStruct.ReadWrite {
            public static Strval fromFile(String fileName) throws IOException {
                return new Strval(new ByteBufferKaitaiStream(fileName));
            }
            public Strval() {
                this(null, null, null);
            }

            public Strval(KaitaiStream _io) {
                this(_io, null, null);
            }

            public Strval(KaitaiStream _io, SwitchBytearray.Opcode _parent) {
                this(_io, _parent, null);
            }

            public Strval(KaitaiStream _io, SwitchBytearray.Opcode _parent, SwitchBytearray _root) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
            }
            public void _read() {
                this.value = new String(this._io.readBytesTerm((byte) 0, false, true, true), StandardCharsets.US_ASCII);
            }

            public void _fetchInstances() {
            }

            public void _write_Seq() {
                this._io.writeBytes((this.value).getBytes(Charset.forName("ASCII")));
                this._io.writeU1(0);
            }

            public void _check() {
                if (KaitaiStream.byteArrayIndexOf((this.value).getBytes(Charset.forName("ASCII")), ((byte) 0)) != -1)
                    throw new ConsistencyError("value", KaitaiStream.byteArrayIndexOf((this.value).getBytes(Charset.forName("ASCII")), ((byte) 0)), -1);
            }
            private String value;
            private SwitchBytearray _root;
            private SwitchBytearray.Opcode _parent;
            public String value() { return value; }
            public void setValue(String _v) { value = _v; }
            public SwitchBytearray _root() { return _root; }
            public void set_root(SwitchBytearray _v) { _root = _v; }
            public SwitchBytearray.Opcode _parent() { return _parent; }
            public void set_parent(SwitchBytearray.Opcode _v) { _parent = _v; }
        }
        private byte[] code;
        private KaitaiStruct.ReadWrite body;
        private SwitchBytearray _root;
        private SwitchBytearray _parent;
        public byte[] code() { return code; }
        public void setCode(byte[] _v) { code = _v; }
        public KaitaiStruct.ReadWrite body() { return body; }
        public void setBody(KaitaiStruct.ReadWrite _v) { body = _v; }
        public SwitchBytearray _root() { return _root; }
        public void set_root(SwitchBytearray _v) { _root = _v; }
        public SwitchBytearray _parent() { return _parent; }
        public void set_parent(SwitchBytearray _v) { _parent = _v; }
    }
    private List<Opcode> opcodes;
    private SwitchBytearray _root;
    private KaitaiStruct.ReadWrite _parent;
    public List<Opcode> opcodes() { return opcodes; }
    public void setOpcodes(List<Opcode> _v) { opcodes = _v; }
    public SwitchBytearray _root() { return _root; }
    public void set_root(SwitchBytearray _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
}
