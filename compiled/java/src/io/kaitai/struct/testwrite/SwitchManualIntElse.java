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

public class SwitchManualIntElse extends KaitaiStruct.ReadWrite {
    public static SwitchManualIntElse fromFile(String fileName) throws IOException {
        return new SwitchManualIntElse(new ByteBufferKaitaiStream(fileName));
    }
    public SwitchManualIntElse() {
        this(null, null, null);
    }

    public SwitchManualIntElse(KaitaiStream _io) {
        this(_io, null, null);
    }

    public SwitchManualIntElse(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public SwitchManualIntElse(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, SwitchManualIntElse _root) {
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

        public Opcode(KaitaiStream _io, SwitchManualIntElse _parent) {
            this(_io, _parent, null);
        }

        public Opcode(KaitaiStream _io, SwitchManualIntElse _parent, SwitchManualIntElse _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.code = this._io.readU1();
            switch (code()) {
            case 73: {
                this.body = new Intval(this._io, this, _root);
                ((Intval) (this.body))._read();
                break;
            }
            case 83: {
                this.body = new Strval(this._io, this, _root);
                ((Strval) (this.body))._read();
                break;
            }
            default: {
                this.body = new Noneval(this._io, this, _root);
                ((Noneval) (this.body))._read();
                break;
            }
            }
            _dirty = false;
        }

        public void _fetchInstances() {
            switch (code()) {
            case 73: {
                ((Intval) (this.body))._fetchInstances();
                break;
            }
            case 83: {
                ((Strval) (this.body))._fetchInstances();
                break;
            }
            default: {
                ((Noneval) (this.body))._fetchInstances();
                break;
            }
            }
        }

        public void _write_Seq() {
            _assertNotDirty();
            this._io.writeU1(this.code);
            switch (code()) {
            case 73: {
                ((Intval) (this.body))._write_Seq(this._io);
                break;
            }
            case 83: {
                ((Strval) (this.body))._write_Seq(this._io);
                break;
            }
            default: {
                ((Noneval) (this.body))._write_Seq(this._io);
                break;
            }
            }
        }

        public void _check() {
            switch (code()) {
            case 73: {
                if (!Objects.equals(((SwitchManualIntElse.Opcode.Intval) (this.body))._root(), _root()))
                    throw new ConsistencyError("body", ((SwitchManualIntElse.Opcode.Intval) (this.body))._root(), _root());
                if (!Objects.equals(((SwitchManualIntElse.Opcode.Intval) (this.body))._parent(), this))
                    throw new ConsistencyError("body", ((SwitchManualIntElse.Opcode.Intval) (this.body))._parent(), this);
                break;
            }
            case 83: {
                if (!Objects.equals(((SwitchManualIntElse.Opcode.Strval) (this.body))._root(), _root()))
                    throw new ConsistencyError("body", ((SwitchManualIntElse.Opcode.Strval) (this.body))._root(), _root());
                if (!Objects.equals(((SwitchManualIntElse.Opcode.Strval) (this.body))._parent(), this))
                    throw new ConsistencyError("body", ((SwitchManualIntElse.Opcode.Strval) (this.body))._parent(), this);
                break;
            }
            default: {
                if (!Objects.equals(((SwitchManualIntElse.Opcode.Noneval) (this.body))._root(), _root()))
                    throw new ConsistencyError("body", ((SwitchManualIntElse.Opcode.Noneval) (this.body))._root(), _root());
                if (!Objects.equals(((SwitchManualIntElse.Opcode.Noneval) (this.body))._parent(), this))
                    throw new ConsistencyError("body", ((SwitchManualIntElse.Opcode.Noneval) (this.body))._parent(), this);
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

            public Intval(KaitaiStream _io, SwitchManualIntElse.Opcode _parent) {
                this(_io, _parent, null);
            }

            public Intval(KaitaiStream _io, SwitchManualIntElse.Opcode _parent, SwitchManualIntElse _root) {
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
            private int value;
            private SwitchManualIntElse _root;
            private SwitchManualIntElse.Opcode _parent;
            public int value() { return value; }
            public void setValue(int _v) { _dirty = true; value = _v; }
            public SwitchManualIntElse _root() { return _root; }
            public void set_root(SwitchManualIntElse _v) { _dirty = true; _root = _v; }
            public SwitchManualIntElse.Opcode _parent() { return _parent; }
            public void set_parent(SwitchManualIntElse.Opcode _v) { _dirty = true; _parent = _v; }
        }
        public static class Noneval extends KaitaiStruct.ReadWrite {
            public static Noneval fromFile(String fileName) throws IOException {
                return new Noneval(new ByteBufferKaitaiStream(fileName));
            }
            public Noneval() {
                this(null, null, null);
            }

            public Noneval(KaitaiStream _io) {
                this(_io, null, null);
            }

            public Noneval(KaitaiStream _io, SwitchManualIntElse.Opcode _parent) {
                this(_io, _parent, null);
            }

            public Noneval(KaitaiStream _io, SwitchManualIntElse.Opcode _parent, SwitchManualIntElse _root) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
            }
            public void _read() {
                this.filler = this._io.readU4le();
                _dirty = false;
            }

            public void _fetchInstances() {
            }

            public void _write_Seq() {
                _assertNotDirty();
                this._io.writeU4le(this.filler);
            }

            public void _check() {
                _dirty = false;
            }
            private long filler;
            private SwitchManualIntElse _root;
            private SwitchManualIntElse.Opcode _parent;
            public long filler() { return filler; }
            public void setFiller(long _v) { _dirty = true; filler = _v; }
            public SwitchManualIntElse _root() { return _root; }
            public void set_root(SwitchManualIntElse _v) { _dirty = true; _root = _v; }
            public SwitchManualIntElse.Opcode _parent() { return _parent; }
            public void set_parent(SwitchManualIntElse.Opcode _v) { _dirty = true; _parent = _v; }
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

            public Strval(KaitaiStream _io, SwitchManualIntElse.Opcode _parent) {
                this(_io, _parent, null);
            }

            public Strval(KaitaiStream _io, SwitchManualIntElse.Opcode _parent, SwitchManualIntElse _root) {
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
                    throw new ConsistencyError("value", KaitaiStream.byteArrayIndexOf((this.value).getBytes(Charset.forName("ASCII")), ((byte) 0)), -1);
                _dirty = false;
            }
            private String value;
            private SwitchManualIntElse _root;
            private SwitchManualIntElse.Opcode _parent;
            public String value() { return value; }
            public void setValue(String _v) { _dirty = true; value = _v; }
            public SwitchManualIntElse _root() { return _root; }
            public void set_root(SwitchManualIntElse _v) { _dirty = true; _root = _v; }
            public SwitchManualIntElse.Opcode _parent() { return _parent; }
            public void set_parent(SwitchManualIntElse.Opcode _v) { _dirty = true; _parent = _v; }
        }
        private int code;
        private KaitaiStruct.ReadWrite body;
        private SwitchManualIntElse _root;
        private SwitchManualIntElse _parent;
        public int code() { return code; }
        public void setCode(int _v) { _dirty = true; code = _v; }
        public KaitaiStruct.ReadWrite body() { return body; }
        public void setBody(KaitaiStruct.ReadWrite _v) { _dirty = true; body = _v; }
        public SwitchManualIntElse _root() { return _root; }
        public void set_root(SwitchManualIntElse _v) { _dirty = true; _root = _v; }
        public SwitchManualIntElse _parent() { return _parent; }
        public void set_parent(SwitchManualIntElse _v) { _dirty = true; _parent = _v; }
    }
    private List<Opcode> opcodes;
    private SwitchManualIntElse _root;
    private KaitaiStruct.ReadWrite _parent;
    public List<Opcode> opcodes() { return opcodes; }
    public void setOpcodes(List<Opcode> _v) { _dirty = true; opcodes = _v; }
    public SwitchManualIntElse _root() { return _root; }
    public void set_root(SwitchManualIntElse _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
