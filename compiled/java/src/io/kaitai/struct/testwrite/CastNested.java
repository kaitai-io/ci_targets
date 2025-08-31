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

public class CastNested extends KaitaiStruct.ReadWrite {
    public static CastNested fromFile(String fileName) throws IOException {
        return new CastNested(new ByteBufferKaitaiStream(fileName));
    }
    public CastNested() {
        this(null, null, null);
    }

    public CastNested(KaitaiStream _io) {
        this(_io, null, null);
    }

    public CastNested(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public CastNested(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, CastNested _root) {
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

        public Opcode(KaitaiStream _io, CastNested _parent) {
            this(_io, _parent, null);
        }

        public Opcode(KaitaiStream _io, CastNested _parent, CastNested _root) {
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
                if (!Objects.equals(((CastNested.Opcode.Intval) (this.body))._root(), _root()))
                    throw new ConsistencyError("body", ((CastNested.Opcode.Intval) (this.body))._root(), _root());
                if (!Objects.equals(((CastNested.Opcode.Intval) (this.body))._parent(), this))
                    throw new ConsistencyError("body", ((CastNested.Opcode.Intval) (this.body))._parent(), this);
                break;
            }
            case 83: {
                if (!Objects.equals(((CastNested.Opcode.Strval) (this.body))._root(), _root()))
                    throw new ConsistencyError("body", ((CastNested.Opcode.Strval) (this.body))._root(), _root());
                if (!Objects.equals(((CastNested.Opcode.Strval) (this.body))._parent(), this))
                    throw new ConsistencyError("body", ((CastNested.Opcode.Strval) (this.body))._parent(), this);
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

            public Intval(KaitaiStream _io, CastNested.Opcode _parent) {
                this(_io, _parent, null);
            }

            public Intval(KaitaiStream _io, CastNested.Opcode _parent, CastNested _root) {
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
            private CastNested _root;
            private CastNested.Opcode _parent;
            public int value() { return value; }
            public void setValue(int _v) { value = _v; }
            public CastNested _root() { return _root; }
            public void set_root(CastNested _v) { _root = _v; }
            public CastNested.Opcode _parent() { return _parent; }
            public void set_parent(CastNested.Opcode _v) { _parent = _v; }
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

            public Strval(KaitaiStream _io, CastNested.Opcode _parent) {
                this(_io, _parent, null);
            }

            public Strval(KaitaiStream _io, CastNested.Opcode _parent, CastNested _root) {
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
            private CastNested _root;
            private CastNested.Opcode _parent;
            public String value() { return value; }
            public void setValue(String _v) { value = _v; }
            public CastNested _root() { return _root; }
            public void set_root(CastNested _v) { _root = _v; }
            public CastNested.Opcode _parent() { return _parent; }
            public void set_parent(CastNested.Opcode _v) { _parent = _v; }
        }
        private int code;
        private KaitaiStruct.ReadWrite body;
        private CastNested _root;
        private CastNested _parent;
        public int code() { return code; }
        public void setCode(int _v) { code = _v; }
        public KaitaiStruct.ReadWrite body() { return body; }
        public void setBody(KaitaiStruct.ReadWrite _v) { body = _v; }
        public CastNested _root() { return _root; }
        public void set_root(CastNested _v) { _root = _v; }
        public CastNested _parent() { return _parent; }
        public void set_parent(CastNested _v) { _parent = _v; }
    }
    private CastNested.Opcode.Strval opcodes0Str;
    public CastNested.Opcode.Strval opcodes0Str() {
        if (this.opcodes0Str != null)
            return this.opcodes0Str;
        this.opcodes0Str = ((CastNested.Opcode.Strval) (opcodes().get(((int) 0)).body()));
        return this.opcodes0Str;
    }
    public void _invalidateOpcodes0Str() { this.opcodes0Str = null; }
    private String opcodes0StrValue;
    public String opcodes0StrValue() {
        if (this.opcodes0StrValue != null)
            return this.opcodes0StrValue;
        this.opcodes0StrValue = ((CastNested.Opcode.Strval) (opcodes().get(((int) 0)).body())).value();
        return this.opcodes0StrValue;
    }
    public void _invalidateOpcodes0StrValue() { this.opcodes0StrValue = null; }
    private CastNested.Opcode.Intval opcodes1Int;
    public CastNested.Opcode.Intval opcodes1Int() {
        if (this.opcodes1Int != null)
            return this.opcodes1Int;
        this.opcodes1Int = ((CastNested.Opcode.Intval) (opcodes().get(((int) 1)).body()));
        return this.opcodes1Int;
    }
    public void _invalidateOpcodes1Int() { this.opcodes1Int = null; }
    private Integer opcodes1IntValue;
    public Integer opcodes1IntValue() {
        if (this.opcodes1IntValue != null)
            return this.opcodes1IntValue;
        this.opcodes1IntValue = ((Number) (((CastNested.Opcode.Intval) (opcodes().get(((int) 1)).body())).value())).intValue();
        return this.opcodes1IntValue;
    }
    public void _invalidateOpcodes1IntValue() { this.opcodes1IntValue = null; }
    private List<Opcode> opcodes;
    private CastNested _root;
    private KaitaiStruct.ReadWrite _parent;
    public List<Opcode> opcodes() { return opcodes; }
    public void setOpcodes(List<Opcode> _v) { opcodes = _v; }
    public CastNested _root() { return _root; }
    public void set_root(CastNested _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
}
