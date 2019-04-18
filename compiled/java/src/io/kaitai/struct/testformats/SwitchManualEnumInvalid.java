// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Map;
import java.util.HashMap;
import java.nio.charset.Charset;

public class SwitchManualEnumInvalid extends KaitaiStruct {
    public static SwitchManualEnumInvalid fromFile(String fileName) throws IOException {
        return new SwitchManualEnumInvalid(new ByteBufferKaitaiStream(fileName));
    }

    public SwitchManualEnumInvalid(KaitaiStream _io) {
        this(_io, null, null);
    }

    public SwitchManualEnumInvalid(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public SwitchManualEnumInvalid(KaitaiStream _io, KaitaiStruct _parent, SwitchManualEnumInvalid _root) {
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

        public Opcode(KaitaiStream _io, SwitchManualEnumInvalid _parent) {
            this(_io, _parent, null);
        }

        public Opcode(KaitaiStream _io, SwitchManualEnumInvalid _parent, SwitchManualEnumInvalid _root) {
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
                    }
                }
            }
        }
        public static class Intval extends KaitaiStruct {
            public static Intval fromFile(String fileName) throws IOException {
                return new Intval(new ByteBufferKaitaiStream(fileName));
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
                _read();
            }
            private void _read() {
                this.value = this._io.readU1();
            }
            private int value;
            private SwitchManualEnumInvalid _root;
            private SwitchManualEnumInvalid.Opcode _parent;
            public int value() { return value; }
            public SwitchManualEnumInvalid _root() { return _root; }
            public SwitchManualEnumInvalid.Opcode _parent() { return _parent; }
        }
        public static class Strval extends KaitaiStruct {
            public static Strval fromFile(String fileName) throws IOException {
                return new Strval(new ByteBufferKaitaiStream(fileName));
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
                _read();
            }
            private void _read() {
                this.value = new String(this._io.readBytesTerm(0, false, true, true), Charset.forName("ASCII"));
            }
            private String value;
            private SwitchManualEnumInvalid _root;
            private SwitchManualEnumInvalid.Opcode _parent;
            public String value() { return value; }
            public SwitchManualEnumInvalid _root() { return _root; }
            public SwitchManualEnumInvalid.Opcode _parent() { return _parent; }
        }
        private CodeEnum code;
        private KaitaiStruct body;
        private SwitchManualEnumInvalid _root;
        private SwitchManualEnumInvalid _parent;
        public CodeEnum code() { return code; }
        public KaitaiStruct body() { return body; }
        public SwitchManualEnumInvalid _root() { return _root; }
        public SwitchManualEnumInvalid _parent() { return _parent; }
    }
    private ArrayList<Opcode> opcodes;
    private SwitchManualEnumInvalid _root;
    private KaitaiStruct _parent;
    public ArrayList<Opcode> opcodes() { return opcodes; }
    public SwitchManualEnumInvalid _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
