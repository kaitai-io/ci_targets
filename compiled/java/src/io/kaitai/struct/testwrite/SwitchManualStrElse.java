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

public class SwitchManualStrElse extends KaitaiStruct.ReadWrite {
    public static SwitchManualStrElse fromFile(String fileName) throws IOException {
        return new SwitchManualStrElse(new ByteBufferKaitaiStream(fileName));
    }
    public SwitchManualStrElse() {
        this(null, null, null);
    }

    public SwitchManualStrElse(KaitaiStream _io) {
        this(_io, null, null);
    }

    public SwitchManualStrElse(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public SwitchManualStrElse(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, SwitchManualStrElse _root) {
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

        public Opcode(KaitaiStream _io, SwitchManualStrElse _parent) {
            this(_io, _parent, null);
        }

        public Opcode(KaitaiStream _io, SwitchManualStrElse _parent, SwitchManualStrElse _root) {
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
            default: {
                this.body = new Noneval(this._io, this, _root);
                ((Noneval) (this.body))._read();
                break;
            }
            }
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
            default: {
                ((Noneval) (this.body))._fetchInstances();
                break;
            }
            }
        }

        public void _write_Seq() {
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
            default: {
                ((Noneval) (this.body))._write_Seq(this._io);
                break;
            }
            }
        }

        public void _check() {
            if ((this.code).getBytes(Charset.forName("ASCII")).length != 1)
                throw new ConsistencyError("code", (this.code).getBytes(Charset.forName("ASCII")).length, 1);
            switch (code()) {
            case "I": {
                if (!Objects.equals(((SwitchManualStrElse.Opcode.Intval) (this.body))._root(), _root()))
                    throw new ConsistencyError("body", ((SwitchManualStrElse.Opcode.Intval) (this.body))._root(), _root());
                if (!Objects.equals(((SwitchManualStrElse.Opcode.Intval) (this.body))._parent(), this))
                    throw new ConsistencyError("body", ((SwitchManualStrElse.Opcode.Intval) (this.body))._parent(), this);
                break;
            }
            case "S": {
                if (!Objects.equals(((SwitchManualStrElse.Opcode.Strval) (this.body))._root(), _root()))
                    throw new ConsistencyError("body", ((SwitchManualStrElse.Opcode.Strval) (this.body))._root(), _root());
                if (!Objects.equals(((SwitchManualStrElse.Opcode.Strval) (this.body))._parent(), this))
                    throw new ConsistencyError("body", ((SwitchManualStrElse.Opcode.Strval) (this.body))._parent(), this);
                break;
            }
            default: {
                if (!Objects.equals(((SwitchManualStrElse.Opcode.Noneval) (this.body))._root(), _root()))
                    throw new ConsistencyError("body", ((SwitchManualStrElse.Opcode.Noneval) (this.body))._root(), _root());
                if (!Objects.equals(((SwitchManualStrElse.Opcode.Noneval) (this.body))._parent(), this))
                    throw new ConsistencyError("body", ((SwitchManualStrElse.Opcode.Noneval) (this.body))._parent(), this);
                break;
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

            public Intval(KaitaiStream _io, SwitchManualStrElse.Opcode _parent) {
                this(_io, _parent, null);
            }

            public Intval(KaitaiStream _io, SwitchManualStrElse.Opcode _parent, SwitchManualStrElse _root) {
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
            private SwitchManualStrElse _root;
            private SwitchManualStrElse.Opcode _parent;
            public int value() { return value; }
            public void setValue(int _v) { value = _v; }
            public SwitchManualStrElse _root() { return _root; }
            public void set_root(SwitchManualStrElse _v) { _root = _v; }
            public SwitchManualStrElse.Opcode _parent() { return _parent; }
            public void set_parent(SwitchManualStrElse.Opcode _v) { _parent = _v; }
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

            public Noneval(KaitaiStream _io, SwitchManualStrElse.Opcode _parent) {
                this(_io, _parent, null);
            }

            public Noneval(KaitaiStream _io, SwitchManualStrElse.Opcode _parent, SwitchManualStrElse _root) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
            }
            public void _read() {
                this.filler = this._io.readU4le();
            }

            public void _fetchInstances() {
            }

            public void _write_Seq() {
                this._io.writeU4le(this.filler);
            }

            public void _check() {
            }
            private long filler;
            private SwitchManualStrElse _root;
            private SwitchManualStrElse.Opcode _parent;
            public long filler() { return filler; }
            public void setFiller(long _v) { filler = _v; }
            public SwitchManualStrElse _root() { return _root; }
            public void set_root(SwitchManualStrElse _v) { _root = _v; }
            public SwitchManualStrElse.Opcode _parent() { return _parent; }
            public void set_parent(SwitchManualStrElse.Opcode _v) { _parent = _v; }
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

            public Strval(KaitaiStream _io, SwitchManualStrElse.Opcode _parent) {
                this(_io, _parent, null);
            }

            public Strval(KaitaiStream _io, SwitchManualStrElse.Opcode _parent, SwitchManualStrElse _root) {
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
            private SwitchManualStrElse _root;
            private SwitchManualStrElse.Opcode _parent;
            public String value() { return value; }
            public void setValue(String _v) { value = _v; }
            public SwitchManualStrElse _root() { return _root; }
            public void set_root(SwitchManualStrElse _v) { _root = _v; }
            public SwitchManualStrElse.Opcode _parent() { return _parent; }
            public void set_parent(SwitchManualStrElse.Opcode _v) { _parent = _v; }
        }
        private String code;
        private KaitaiStruct.ReadWrite body;
        private SwitchManualStrElse _root;
        private SwitchManualStrElse _parent;
        public String code() { return code; }
        public void setCode(String _v) { code = _v; }
        public KaitaiStruct.ReadWrite body() { return body; }
        public void setBody(KaitaiStruct.ReadWrite _v) { body = _v; }
        public SwitchManualStrElse _root() { return _root; }
        public void set_root(SwitchManualStrElse _v) { _root = _v; }
        public SwitchManualStrElse _parent() { return _parent; }
        public void set_parent(SwitchManualStrElse _v) { _parent = _v; }
    }
    private List<Opcode> opcodes;
    private SwitchManualStrElse _root;
    private KaitaiStruct.ReadWrite _parent;
    public List<Opcode> opcodes() { return opcodes; }
    public void setOpcodes(List<Opcode> _v) { opcodes = _v; }
    public SwitchManualStrElse _root() { return _root; }
    public void set_root(SwitchManualStrElse _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
}
