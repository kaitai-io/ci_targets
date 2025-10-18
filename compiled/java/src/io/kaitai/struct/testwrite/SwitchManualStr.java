// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import io.kaitai.struct.ConsistencyError;
import java.util.Objects;
import java.nio.charset.StandardCharsets;
import java.nio.charset.Charset;
import java.util.List;

public class SwitchManualStr extends KaitaiStruct.ReadWrite {
    public static SwitchManualStr fromFile(String fileName) throws IOException {
        return new SwitchManualStr(new ByteBufferKaitaiStream(fileName));
    }
    public SwitchManualStr() {
        this(null, null, null);
    }

    public SwitchManualStr(KaitaiStream _io) {
        this(_io, null, null);
    }

    public SwitchManualStr(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public SwitchManualStr(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, SwitchManualStr _root) {
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
        _dirty = false;
    }

    public void _fetchInstances() {
        for (int i = 0; i < this.opcodes.size(); i++) {
            this.opcodes.get(((Number) (i)).intValue())._fetchInstances();
        }
    }

    public void _write_Seq() {
        _assertNotDirty();
        for (int i = 0; i < this.opcodes.size(); i++) {
            if (this._io.isEof())
                throw new ConsistencyError("opcodes", 0, this._io.size() - this._io.pos());
            this.opcodes.get(((Number) (i)).intValue())._write_Seq(this._io);
        }
        if (!(this._io.isEof()))
            throw new ConsistencyError("opcodes", 0, this._io.size() - this._io.pos());
    }

    public void _check() {
        for (int i = 0; i < this.opcodes.size(); i++) {
            if (!Objects.equals(this.opcodes.get(((Number) (i)).intValue())._root(), _root()))
                throw new ConsistencyError("opcodes", _root(), this.opcodes.get(((Number) (i)).intValue())._root());
            if (!Objects.equals(this.opcodes.get(((Number) (i)).intValue())._parent(), this))
                throw new ConsistencyError("opcodes", this, this.opcodes.get(((Number) (i)).intValue())._parent());
        }
        _dirty = false;
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

        public Opcode(KaitaiStream _io, SwitchManualStr _parent) {
            this(_io, _parent, null);
        }

        public Opcode(KaitaiStream _io, SwitchManualStr _parent, SwitchManualStr _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.code = new String(this._io.readBytes(1), StandardCharsets.US_ASCII);
            switch (code()) {
            case "I": {
                this.body = new Intval(this._io, this, _root);
                ((Intval) (this.body))._read();
                break;
            }
            case "S": {
                this.body = new Strval(this._io, this, _root);
                ((Strval) (this.body))._read();
                break;
            }
            }
            _dirty = false;
        }

        public void _fetchInstances() {
            switch (code()) {
            case "I": {
                ((Intval) (this.body))._fetchInstances();
                break;
            }
            case "S": {
                ((Strval) (this.body))._fetchInstances();
                break;
            }
            }
        }

        public void _write_Seq() {
            _assertNotDirty();
            this._io.writeBytes((this.code).getBytes(Charset.forName("ASCII")));
            switch (code()) {
            case "I": {
                ((Intval) (this.body))._write_Seq(this._io);
                break;
            }
            case "S": {
                ((Strval) (this.body))._write_Seq(this._io);
                break;
            }
            }
        }

        public void _check() {
            if ((this.code).getBytes(Charset.forName("ASCII")).length != 1)
                throw new ConsistencyError("code", 1, (this.code).getBytes(Charset.forName("ASCII")).length);
            switch (code()) {
            case "I": {
                if (!Objects.equals(((SwitchManualStr.Opcode.Intval) (this.body))._root(), _root()))
                    throw new ConsistencyError("body", _root(), ((SwitchManualStr.Opcode.Intval) (this.body))._root());
                if (!Objects.equals(((SwitchManualStr.Opcode.Intval) (this.body))._parent(), this))
                    throw new ConsistencyError("body", this, ((SwitchManualStr.Opcode.Intval) (this.body))._parent());
                break;
            }
            case "S": {
                if (!Objects.equals(((SwitchManualStr.Opcode.Strval) (this.body))._root(), _root()))
                    throw new ConsistencyError("body", _root(), ((SwitchManualStr.Opcode.Strval) (this.body))._root());
                if (!Objects.equals(((SwitchManualStr.Opcode.Strval) (this.body))._parent(), this))
                    throw new ConsistencyError("body", this, ((SwitchManualStr.Opcode.Strval) (this.body))._parent());
                break;
            }
            }
            _dirty = false;
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

            public Intval(KaitaiStream _io, SwitchManualStr.Opcode _parent) {
                this(_io, _parent, null);
            }

            public Intval(KaitaiStream _io, SwitchManualStr.Opcode _parent, SwitchManualStr _root) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
            }
            public void _read() {
                this.value = this._io.readU1();
                _dirty = false;
            }

            public void _fetchInstances() {
            }

            public void _write_Seq() {
                _assertNotDirty();
                this._io.writeU1(this.value);
            }

            public void _check() {
                _dirty = false;
            }
            public int value() { return value; }
            public void setValue(int _v) { _dirty = true; value = _v; }
            public SwitchManualStr _root() { return _root; }
            public void set_root(SwitchManualStr _v) { _dirty = true; _root = _v; }
            public SwitchManualStr.Opcode _parent() { return _parent; }
            public void set_parent(SwitchManualStr.Opcode _v) { _dirty = true; _parent = _v; }
            private int value;
            private SwitchManualStr _root;
            private SwitchManualStr.Opcode _parent;
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

            public Strval(KaitaiStream _io, SwitchManualStr.Opcode _parent) {
                this(_io, _parent, null);
            }

            public Strval(KaitaiStream _io, SwitchManualStr.Opcode _parent, SwitchManualStr _root) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
            }
            public void _read() {
                this.value = new String(this._io.readBytesTerm((byte) 0, false, true, true), StandardCharsets.US_ASCII);
                _dirty = false;
            }

            public void _fetchInstances() {
            }

            public void _write_Seq() {
                _assertNotDirty();
                this._io.writeBytes((this.value).getBytes(Charset.forName("ASCII")));
                this._io.writeU1(0);
            }

            public void _check() {
                if (KaitaiStream.byteArrayIndexOf((this.value).getBytes(Charset.forName("ASCII")), ((byte) 0)) != -1)
                    throw new ConsistencyError("value", -1, KaitaiStream.byteArrayIndexOf((this.value).getBytes(Charset.forName("ASCII")), ((byte) 0)));
                _dirty = false;
            }
            public String value() { return value; }
            public void setValue(String _v) { _dirty = true; value = _v; }
            public SwitchManualStr _root() { return _root; }
            public void set_root(SwitchManualStr _v) { _dirty = true; _root = _v; }
            public SwitchManualStr.Opcode _parent() { return _parent; }
            public void set_parent(SwitchManualStr.Opcode _v) { _dirty = true; _parent = _v; }
            private String value;
            private SwitchManualStr _root;
            private SwitchManualStr.Opcode _parent;
        }
        public String code() { return code; }
        public void setCode(String _v) { _dirty = true; code = _v; }
        public KaitaiStruct.ReadWrite body() { return body; }
        public void setBody(KaitaiStruct.ReadWrite _v) { _dirty = true; body = _v; }
        public SwitchManualStr _root() { return _root; }
        public void set_root(SwitchManualStr _v) { _dirty = true; _root = _v; }
        public SwitchManualStr _parent() { return _parent; }
        public void set_parent(SwitchManualStr _v) { _dirty = true; _parent = _v; }
        private String code;
        private KaitaiStruct.ReadWrite body;
        private SwitchManualStr _root;
        private SwitchManualStr _parent;
    }
    public List<Opcode> opcodes() { return opcodes; }
    public void setOpcodes(List<Opcode> _v) { _dirty = true; opcodes = _v; }
    public SwitchManualStr _root() { return _root; }
    public void set_root(SwitchManualStr _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    private List<Opcode> opcodes;
    private SwitchManualStr _root;
    private KaitaiStruct.ReadWrite _parent;
}
