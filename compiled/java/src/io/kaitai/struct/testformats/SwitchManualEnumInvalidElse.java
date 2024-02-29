// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Map;
import java.util.HashMap;
import java.nio.charset.StandardCharsets;

public class SwitchManualEnumInvalidElse extends KaitaiStruct {
    public static SwitchManualEnumInvalidElse fromFile(String fileName) throws IOException {
        return new SwitchManualEnumInvalidElse(new ByteBufferKaitaiStream(fileName));
    }

    public SwitchManualEnumInvalidElse(KaitaiStream _io) {
        this(_io, null, null);
    }

    public SwitchManualEnumInvalidElse(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public SwitchManualEnumInvalidElse(KaitaiStream _io, KaitaiStruct _parent, SwitchManualEnumInvalidElse _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.opcodes = new ArrayList<Opcode>();
        {
            int i = 0;
            while (!this._io.isEof()) {
                this.opcodes.add(new Opcode(this._io, this, _root));
                i++;
            }
        }
    }
    public static class Opcode extends KaitaiStruct {
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
            _read();
        }
        private void _read() {
            this.code = CodeEnum.byId(this._io.readU1());
            {
                CodeEnum on = code();
                if (on != null) {
                    switch (code()) {
                    case INTVAL: {
                        this.body = new Intval(this._io, this, _root);
                        break;
                    }
                    case STRVAL: {
                        this.body = new Strval(this._io, this, _root);
                        break;
                    }
                    default: {
                        this.body = new Defval(this._io, this, _root);
                        break;
                    }
                    }
                } else {
                    this.body = new Defval(this._io, this, _root);
                }
            }
        }
        public static class Defval extends KaitaiStruct {
            public static Defval fromFile(String fileName) throws IOException {
                return new Defval(new ByteBufferKaitaiStream(fileName));
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
                _read();
            }
            private void _read() {
            }
            private Byte value;
            public Byte value() {
                if (this.value != null)
                    return this.value;
                byte _tmp = (byte) (123);
                this.value = _tmp;
                return this.value;
            }
            private SwitchManualEnumInvalidElse _root;
            private SwitchManualEnumInvalidElse.Opcode _parent;
            public SwitchManualEnumInvalidElse _root() { return _root; }
            public SwitchManualEnumInvalidElse.Opcode _parent() { return _parent; }
        }
        public static class Intval extends KaitaiStruct {
            public static Intval fromFile(String fileName) throws IOException {
                return new Intval(new ByteBufferKaitaiStream(fileName));
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
                _read();
            }
            private void _read() {
                this.value = this._io.readU1();
            }
            private int value;
            private SwitchManualEnumInvalidElse _root;
            private SwitchManualEnumInvalidElse.Opcode _parent;
            public int value() { return value; }
            public SwitchManualEnumInvalidElse _root() { return _root; }
            public SwitchManualEnumInvalidElse.Opcode _parent() { return _parent; }
        }
        public static class Strval extends KaitaiStruct {
            public static Strval fromFile(String fileName) throws IOException {
                return new Strval(new ByteBufferKaitaiStream(fileName));
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
                _read();
            }
            private void _read() {
                this.value = new String(this._io.readBytesTerm((byte) 0, false, true, true), StandardCharsets.US_ASCII);
            }
            private String value;
            private SwitchManualEnumInvalidElse _root;
            private SwitchManualEnumInvalidElse.Opcode _parent;
            public String value() { return value; }
            public SwitchManualEnumInvalidElse _root() { return _root; }
            public SwitchManualEnumInvalidElse.Opcode _parent() { return _parent; }
        }
        private CodeEnum code;
        private KaitaiStruct body;
        private SwitchManualEnumInvalidElse _root;
        private SwitchManualEnumInvalidElse _parent;
        public CodeEnum code() { return code; }
        public KaitaiStruct body() { return body; }
        public SwitchManualEnumInvalidElse _root() { return _root; }
        public SwitchManualEnumInvalidElse _parent() { return _parent; }
    }
    private ArrayList<Opcode> opcodes;
    private SwitchManualEnumInvalidElse _root;
    private KaitaiStruct _parent;
    public ArrayList<Opcode> opcodes() { return opcodes; }
    public SwitchManualEnumInvalidElse _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
