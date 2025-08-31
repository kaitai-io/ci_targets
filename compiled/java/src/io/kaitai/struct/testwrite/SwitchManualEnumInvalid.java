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

public class SwitchManualEnumInvalid extends KaitaiStruct.ReadWrite {
    public static SwitchManualEnumInvalid fromFile(String fileName) throws IOException {
        return new SwitchManualEnumInvalid(new ByteBufferKaitaiStream(fileName));
    }
    public SwitchManualEnumInvalid() {
        this(null, null, null);
    }

    public SwitchManualEnumInvalid(KaitaiStream _io) {
        this(_io, null, null);
    }

    public SwitchManualEnumInvalid(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public SwitchManualEnumInvalid(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, SwitchManualEnumInvalid _root) {
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

        public Opcode(KaitaiStream _io, SwitchManualEnumInvalid _parent) {
            this(_io, _parent, null);
        }

        public Opcode(KaitaiStream _io, SwitchManualEnumInvalid _parent, SwitchManualEnumInvalid _root) {
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
                    }
                }
            }
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
                    }
                }
            }
        }

        public void _write_Seq() {
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
                    }
                }
            }
        }

        public void _check() {
            {
                CodeEnum on = code();
                if (on != null) {
                    switch (code()) {
                    case INTVAL: {
                        if (!Objects.equals(((SwitchManualEnumInvalid.Opcode.Intval) (this.body))._root(), _root()))
                            throw new ConsistencyError("body", ((SwitchManualEnumInvalid.Opcode.Intval) (this.body))._root(), _root());
                        if (!Objects.equals(((SwitchManualEnumInvalid.Opcode.Intval) (this.body))._parent(), this))
                            throw new ConsistencyError("body", ((SwitchManualEnumInvalid.Opcode.Intval) (this.body))._parent(), this);
                        break;
                    }
                    case STRVAL: {
                        if (!Objects.equals(((SwitchManualEnumInvalid.Opcode.Strval) (this.body))._root(), _root()))
                            throw new ConsistencyError("body", ((SwitchManualEnumInvalid.Opcode.Strval) (this.body))._root(), _root());
                        if (!Objects.equals(((SwitchManualEnumInvalid.Opcode.Strval) (this.body))._parent(), this))
                            throw new ConsistencyError("body", ((SwitchManualEnumInvalid.Opcode.Strval) (this.body))._parent(), this);
                        break;
                    }
                    }
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

            public Intval(KaitaiStream _io, SwitchManualEnumInvalid.Opcode _parent) {
                this(_io, _parent, null);
            }

            public Intval(KaitaiStream _io, SwitchManualEnumInvalid.Opcode _parent, SwitchManualEnumInvalid _root) {
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
            private SwitchManualEnumInvalid _root;
            private SwitchManualEnumInvalid.Opcode _parent;
            public int value() { return value; }
            public void setValue(int _v) { value = _v; }
            public SwitchManualEnumInvalid _root() { return _root; }
            public void set_root(SwitchManualEnumInvalid _v) { _root = _v; }
            public SwitchManualEnumInvalid.Opcode _parent() { return _parent; }
            public void set_parent(SwitchManualEnumInvalid.Opcode _v) { _parent = _v; }
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

            public Strval(KaitaiStream _io, SwitchManualEnumInvalid.Opcode _parent) {
                this(_io, _parent, null);
            }

            public Strval(KaitaiStream _io, SwitchManualEnumInvalid.Opcode _parent, SwitchManualEnumInvalid _root) {
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
            private SwitchManualEnumInvalid _root;
            private SwitchManualEnumInvalid.Opcode _parent;
            public String value() { return value; }
            public void setValue(String _v) { value = _v; }
            public SwitchManualEnumInvalid _root() { return _root; }
            public void set_root(SwitchManualEnumInvalid _v) { _root = _v; }
            public SwitchManualEnumInvalid.Opcode _parent() { return _parent; }
            public void set_parent(SwitchManualEnumInvalid.Opcode _v) { _parent = _v; }
        }
        private CodeEnum code;
        private KaitaiStruct.ReadWrite body;
        private SwitchManualEnumInvalid _root;
        private SwitchManualEnumInvalid _parent;
        public CodeEnum code() { return code; }
        public void setCode(CodeEnum _v) { code = _v; }
        public KaitaiStruct.ReadWrite body() { return body; }
        public void setBody(KaitaiStruct.ReadWrite _v) { body = _v; }
        public SwitchManualEnumInvalid _root() { return _root; }
        public void set_root(SwitchManualEnumInvalid _v) { _root = _v; }
        public SwitchManualEnumInvalid _parent() { return _parent; }
        public void set_parent(SwitchManualEnumInvalid _v) { _parent = _v; }
    }
    private List<Opcode> opcodes;
    private SwitchManualEnumInvalid _root;
    private KaitaiStruct.ReadWrite _parent;
    public List<Opcode> opcodes() { return opcodes; }
    public void setOpcodes(List<Opcode> _v) { opcodes = _v; }
    public SwitchManualEnumInvalid _root() { return _root; }
    public void set_root(SwitchManualEnumInvalid _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
}
