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

public class SwitchCast extends KaitaiStruct.ReadWrite {
    public static SwitchCast fromFile(String fileName) throws IOException {
        return new SwitchCast(new ByteBufferKaitaiStream(fileName));
    }
    public SwitchCast() {
        this(null, null, null);
    }

    public SwitchCast(KaitaiStream _io) {
        this(_io, null, null);
    }

    public SwitchCast(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public SwitchCast(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, SwitchCast _root) {
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

        public Intval(KaitaiStream _io, SwitchCast.Opcode _parent) {
            this(_io, _parent, null);
        }

        public Intval(KaitaiStream _io, SwitchCast.Opcode _parent, SwitchCast _root) {
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
        public SwitchCast _root() { return _root; }
        public void set_root(SwitchCast _v) { _dirty = true; _root = _v; }
        public SwitchCast.Opcode _parent() { return _parent; }
        public void set_parent(SwitchCast.Opcode _v) { _dirty = true; _parent = _v; }
        private int value;
        private SwitchCast _root;
        private SwitchCast.Opcode _parent;
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

        public Opcode(KaitaiStream _io, SwitchCast _parent) {
            this(_io, _parent, null);
        }

        public Opcode(KaitaiStream _io, SwitchCast _parent, SwitchCast _root) {
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
            }
        }

        public void _check() {
            switch (code()) {
            case 73: {
                if (!Objects.equals(((SwitchCast.Intval) (this.body))._root(), _root()))
                    throw new ConsistencyError("body", _root(), ((SwitchCast.Intval) (this.body))._root());
                if (!Objects.equals(((SwitchCast.Intval) (this.body))._parent(), this))
                    throw new ConsistencyError("body", this, ((SwitchCast.Intval) (this.body))._parent());
                break;
            }
            case 83: {
                if (!Objects.equals(((SwitchCast.Strval) (this.body))._root(), _root()))
                    throw new ConsistencyError("body", _root(), ((SwitchCast.Strval) (this.body))._root());
                if (!Objects.equals(((SwitchCast.Strval) (this.body))._parent(), this))
                    throw new ConsistencyError("body", this, ((SwitchCast.Strval) (this.body))._parent());
                break;
            }
            }
            _dirty = false;
        }
        public int code() { return code; }
        public void setCode(int _v) { _dirty = true; code = _v; }
        public KaitaiStruct.ReadWrite body() { return body; }
        public void setBody(KaitaiStruct.ReadWrite _v) { _dirty = true; body = _v; }
        public SwitchCast _root() { return _root; }
        public void set_root(SwitchCast _v) { _dirty = true; _root = _v; }
        public SwitchCast _parent() { return _parent; }
        public void set_parent(SwitchCast _v) { _dirty = true; _parent = _v; }
        private int code;
        private KaitaiStruct.ReadWrite body;
        private SwitchCast _root;
        private SwitchCast _parent;
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

        public Strval(KaitaiStream _io, SwitchCast.Opcode _parent) {
            this(_io, _parent, null);
        }

        public Strval(KaitaiStream _io, SwitchCast.Opcode _parent, SwitchCast _root) {
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
        public SwitchCast _root() { return _root; }
        public void set_root(SwitchCast _v) { _dirty = true; _root = _v; }
        public SwitchCast.Opcode _parent() { return _parent; }
        public void set_parent(SwitchCast.Opcode _v) { _dirty = true; _parent = _v; }
        private String value;
        private SwitchCast _root;
        private SwitchCast.Opcode _parent;
    }
    public SwitchCast.Strval errCast() {
        if (this.errCast != null)
            return this.errCast;
        this.errCast = ((SwitchCast.Strval) (opcodes().get(((int) 2)).body()));
        return this.errCast;
    }
    public void _invalidateErrCast() { this.errCast = null; }
    public SwitchCast.Strval firstObj() {
        if (this.firstObj != null)
            return this.firstObj;
        this.firstObj = ((SwitchCast.Strval) (opcodes().get(((int) 0)).body()));
        return this.firstObj;
    }
    public void _invalidateFirstObj() { this.firstObj = null; }
    public Integer secondVal() {
        if (this.secondVal != null)
            return this.secondVal;
        this.secondVal = ((Number) (((SwitchCast.Intval) (opcodes().get(((int) 1)).body())).value())).intValue();
        return this.secondVal;
    }
    public void _invalidateSecondVal() { this.secondVal = null; }
    public List<Opcode> opcodes() { return opcodes; }
    public void setOpcodes(List<Opcode> _v) { _dirty = true; opcodes = _v; }
    public SwitchCast _root() { return _root; }
    public void set_root(SwitchCast _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    private SwitchCast.Strval errCast;
    private SwitchCast.Strval firstObj;
    private Integer secondVal;
    private List<Opcode> opcodes;
    private SwitchCast _root;
    private KaitaiStruct.ReadWrite _parent;
}
