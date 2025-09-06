// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import io.kaitai.struct.ConsistencyError;
import java.util.Objects;
import java.util.Map;
import java.util.HashMap;
import java.nio.charset.StandardCharsets;
import java.nio.charset.Charset;
import java.util.List;

public class SwitchManualEnumInvalidElse extends KaitaiStruct.ReadWrite {
    public static SwitchManualEnumInvalidElse fromFile(String fileName) throws IOException {
        return new SwitchManualEnumInvalidElse(new ByteBufferKaitaiStream(fileName));
    }
    public SwitchManualEnumInvalidElse() {
        this(null, null, null);
    }

    public SwitchManualEnumInvalidElse(KaitaiStream _io) {
        this(_io, null, null);
    }

    public SwitchManualEnumInvalidElse(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public SwitchManualEnumInvalidElse(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, SwitchManualEnumInvalidElse _root) {
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

        public enum CodeEnum {
            INTVAL(73),
            STRVAL(83);

            private final long id;
            CodeEnum(long id) { this.id = id; }
            public long id() { return id; }
            private static final Map<Long, CodeEnum> byId = new HashMap<Long, CodeEnum>(2);
            static {
                for (CodeEnum e : CodeEnum.values())
                    byId.put(e.id(), e);
            }
            public static CodeEnum byId(long id) { return byId.get(id); }
        }
        public Opcode() {
            this(null, null, null);
        }

        public Opcode(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Opcode(KaitaiStream _io, SwitchManualEnumInvalidElse _parent) {
            this(_io, _parent, null);
        }

        public Opcode(KaitaiStream _io, SwitchManualEnumInvalidElse _parent, SwitchManualEnumInvalidElse _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.code = CodeEnum.byId(this._io.readU1());
            {
                CodeEnum on = code();
                if (on != null) {
                    switch (code()) {
                    case INTVAL: {
                        this.body = new Intval(this._io, this, _root);
                        ((Intval) (this.body))._read();
                        break;
                    }
                    case STRVAL: {
                        this.body = new Strval(this._io, this, _root);
                        ((Strval) (this.body))._read();
                        break;
                    }
                    default: {
                        this.body = new Defval(this._io, this, _root);
                        ((Defval) (this.body))._read();
                        break;
                    }
                    }
                } else {
                    this.body = new Defval(this._io, this, _root);
                    ((Defval) (this.body))._read();
                }
            }
            _dirty = false;
        }

        public void _fetchInstances() {
            {
                CodeEnum on = code();
                if (on != null) {
                    switch (code()) {
                    case INTVAL: {
                        ((Intval) (this.body))._fetchInstances();
                        break;
                    }
                    case STRVAL: {
                        ((Strval) (this.body))._fetchInstances();
                        break;
                    }
                    default: {
                        ((Defval) (this.body))._fetchInstances();
                        break;
                    }
                    }
                } else {
                    ((Defval) (this.body))._fetchInstances();
                }
            }
        }

        public void _write_Seq() {
            _assertNotDirty();
            this._io.writeU1(((Number) (this.code.id())).intValue());
            {
                CodeEnum on = code();
                if (on != null) {
                    switch (code()) {
                    case INTVAL: {
                        ((Intval) (this.body))._write_Seq(this._io);
                        break;
                    }
                    case STRVAL: {
                        ((Strval) (this.body))._write_Seq(this._io);
                        break;
                    }
                    default: {
                        ((Defval) (this.body))._write_Seq(this._io);
                        break;
                    }
                    }
                } else {
                    ((Defval) (this.body))._write_Seq(this._io);
                }
            }
        }

        public void _check() {
            {
                CodeEnum on = code();
                if (on != null) {
                    switch (code()) {
                    case INTVAL: {
                        if (!Objects.equals(((SwitchManualEnumInvalidElse.Opcode.Intval) (this.body))._root(), _root()))
                            throw new ConsistencyError("body", ((SwitchManualEnumInvalidElse.Opcode.Intval) (this.body))._root(), _root());
                        if (!Objects.equals(((SwitchManualEnumInvalidElse.Opcode.Intval) (this.body))._parent(), this))
                            throw new ConsistencyError("body", ((SwitchManualEnumInvalidElse.Opcode.Intval) (this.body))._parent(), this);
                        break;
                    }
                    case STRVAL: {
                        if (!Objects.equals(((SwitchManualEnumInvalidElse.Opcode.Strval) (this.body))._root(), _root()))
                            throw new ConsistencyError("body", ((SwitchManualEnumInvalidElse.Opcode.Strval) (this.body))._root(), _root());
                        if (!Objects.equals(((SwitchManualEnumInvalidElse.Opcode.Strval) (this.body))._parent(), this))
                            throw new ConsistencyError("body", ((SwitchManualEnumInvalidElse.Opcode.Strval) (this.body))._parent(), this);
                        break;
                    }
                    default: {
                        if (!Objects.equals(((SwitchManualEnumInvalidElse.Opcode.Defval) (this.body))._root(), _root()))
                            throw new ConsistencyError("body", ((SwitchManualEnumInvalidElse.Opcode.Defval) (this.body))._root(), _root());
                        if (!Objects.equals(((SwitchManualEnumInvalidElse.Opcode.Defval) (this.body))._parent(), this))
                            throw new ConsistencyError("body", ((SwitchManualEnumInvalidElse.Opcode.Defval) (this.body))._parent(), this);
                        break;
                    }
                    }
                } else {
                    if (!Objects.equals(((SwitchManualEnumInvalidElse.Opcode.Defval) (this.body))._root(), _root()))
                        throw new ConsistencyError("body", ((SwitchManualEnumInvalidElse.Opcode.Defval) (this.body))._root(), _root());
                    if (!Objects.equals(((SwitchManualEnumInvalidElse.Opcode.Defval) (this.body))._parent(), this))
                        throw new ConsistencyError("body", ((SwitchManualEnumInvalidElse.Opcode.Defval) (this.body))._parent(), this);
                }
            }
            _dirty = false;
        }
        public static class Defval extends KaitaiStruct.ReadWrite {
            public static Defval fromFile(String fileName) throws IOException {
                return new Defval(new ByteBufferKaitaiStream(fileName));
            }
            public Defval() {
                this(null, null, null);
            }

            public Defval(KaitaiStream _io) {
                this(_io, null, null);
            }

            public Defval(KaitaiStream _io, SwitchManualEnumInvalidElse.Opcode _parent) {
                this(_io, _parent, null);
            }

            public Defval(KaitaiStream _io, SwitchManualEnumInvalidElse.Opcode _parent, SwitchManualEnumInvalidElse _root) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
            }
            public void _read() {
                _dirty = false;
            }

            public void _fetchInstances() {
            }

            public void _write_Seq() {
                _assertNotDirty();
            }

            public void _check() {
                _dirty = false;
            }
            private Byte value;
            public Byte value() {
                if (this.value != null)
                    return this.value;
                this.value = ((byte) 123);
                return this.value;
            }
            public void _invalidateValue() { this.value = null; }
            private SwitchManualEnumInvalidElse _root;
            private SwitchManualEnumInvalidElse.Opcode _parent;
            public SwitchManualEnumInvalidElse _root() { return _root; }
            public void set_root(SwitchManualEnumInvalidElse _v) { _dirty = true; _root = _v; }
            public SwitchManualEnumInvalidElse.Opcode _parent() { return _parent; }
            public void set_parent(SwitchManualEnumInvalidElse.Opcode _v) { _dirty = true; _parent = _v; }
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

            public Intval(KaitaiStream _io, SwitchManualEnumInvalidElse.Opcode _parent) {
                this(_io, _parent, null);
            }

            public Intval(KaitaiStream _io, SwitchManualEnumInvalidElse.Opcode _parent, SwitchManualEnumInvalidElse _root) {
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
            private SwitchManualEnumInvalidElse _root;
            private SwitchManualEnumInvalidElse.Opcode _parent;
            public int value() { return value; }
            public void setValue(int _v) { _dirty = true; value = _v; }
            public SwitchManualEnumInvalidElse _root() { return _root; }
            public void set_root(SwitchManualEnumInvalidElse _v) { _dirty = true; _root = _v; }
            public SwitchManualEnumInvalidElse.Opcode _parent() { return _parent; }
            public void set_parent(SwitchManualEnumInvalidElse.Opcode _v) { _dirty = true; _parent = _v; }
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

            public Strval(KaitaiStream _io, SwitchManualEnumInvalidElse.Opcode _parent) {
                this(_io, _parent, null);
            }

            public Strval(KaitaiStream _io, SwitchManualEnumInvalidElse.Opcode _parent, SwitchManualEnumInvalidElse _root) {
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
            private SwitchManualEnumInvalidElse _root;
            private SwitchManualEnumInvalidElse.Opcode _parent;
            public String value() { return value; }
            public void setValue(String _v) { _dirty = true; value = _v; }
            public SwitchManualEnumInvalidElse _root() { return _root; }
            public void set_root(SwitchManualEnumInvalidElse _v) { _dirty = true; _root = _v; }
            public SwitchManualEnumInvalidElse.Opcode _parent() { return _parent; }
            public void set_parent(SwitchManualEnumInvalidElse.Opcode _v) { _dirty = true; _parent = _v; }
        }
        private CodeEnum code;
        private KaitaiStruct.ReadWrite body;
        private SwitchManualEnumInvalidElse _root;
        private SwitchManualEnumInvalidElse _parent;
        public CodeEnum code() { return code; }
        public void setCode(CodeEnum _v) { _dirty = true; code = _v; }
        public KaitaiStruct.ReadWrite body() { return body; }
        public void setBody(KaitaiStruct.ReadWrite _v) { _dirty = true; body = _v; }
        public SwitchManualEnumInvalidElse _root() { return _root; }
        public void set_root(SwitchManualEnumInvalidElse _v) { _dirty = true; _root = _v; }
        public SwitchManualEnumInvalidElse _parent() { return _parent; }
        public void set_parent(SwitchManualEnumInvalidElse _v) { _dirty = true; _parent = _v; }
    }
    private List<Opcode> opcodes;
    private SwitchManualEnumInvalidElse _root;
    private KaitaiStruct.ReadWrite _parent;
    public List<Opcode> opcodes() { return opcodes; }
    public void setOpcodes(List<Opcode> _v) { _dirty = true; opcodes = _v; }
    public SwitchManualEnumInvalidElse _root() { return _root; }
    public void set_root(SwitchManualEnumInvalidElse _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
