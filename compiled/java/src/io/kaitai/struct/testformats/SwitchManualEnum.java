// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;

import java.io.IOException;
import java.util.Arrays;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.nio.charset.Charset;

public class SwitchManualEnum extends KaitaiStruct {
    public static SwitchManualEnum fromFile(String fileName) throws IOException {
        return new SwitchManualEnum(new KaitaiStream(fileName));
    }

    public SwitchManualEnum(KaitaiStream _io) {
        super(_io);
        this._root = this;
        _read();
    }

    public SwitchManualEnum(KaitaiStream _io, KaitaiStruct _parent) {
        super(_io);
        this._parent = _parent;
        this._root = this;
        _read();
    }

    public SwitchManualEnum(KaitaiStream _io, KaitaiStruct _parent, SwitchManualEnum _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root;
        _read();
    }
    private void _read() {
        this.opcodes = new ArrayList<Opcode>();
        while (!this._io.isEof()) {
            this.opcodes.add(new Opcode(this._io, this, _root));
        }
    }
    public static class Opcode extends KaitaiStruct {
        public static Opcode fromFile(String fileName) throws IOException {
            return new Opcode(new KaitaiStream(fileName));
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
            super(_io);
            _read();
        }

        public Opcode(KaitaiStream _io, SwitchManualEnum _parent) {
            super(_io);
            this._parent = _parent;
            _read();
        }

        public Opcode(KaitaiStream _io, SwitchManualEnum _parent, SwitchManualEnum _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.code = CodeEnum.byId(this._io.readU1());
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
        public static class Intval extends KaitaiStruct {
            public static Intval fromFile(String fileName) throws IOException {
                return new Intval(new KaitaiStream(fileName));
            }

            public Intval(KaitaiStream _io) {
                super(_io);
                _read();
            }

            public Intval(KaitaiStream _io, SwitchManualEnum.Opcode _parent) {
                super(_io);
                this._parent = _parent;
                _read();
            }

            public Intval(KaitaiStream _io, SwitchManualEnum.Opcode _parent, SwitchManualEnum _root) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
                _read();
            }
            private void _read() {
                this.value = this._io.readU1();
            }
            private int value;
            private SwitchManualEnum _root;
            private SwitchManualEnum.Opcode _parent;
            public int value() { return value; }
            public SwitchManualEnum _root() { return _root; }
            public SwitchManualEnum.Opcode _parent() { return _parent; }
        }
        public static class Strval extends KaitaiStruct {
            public static Strval fromFile(String fileName) throws IOException {
                return new Strval(new KaitaiStream(fileName));
            }

            public Strval(KaitaiStream _io) {
                super(_io);
                _read();
            }

            public Strval(KaitaiStream _io, SwitchManualEnum.Opcode _parent) {
                super(_io);
                this._parent = _parent;
                _read();
            }

            public Strval(KaitaiStream _io, SwitchManualEnum.Opcode _parent, SwitchManualEnum _root) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
                _read();
            }
            private void _read() {
                this.value = new String(this._io.readBytesTerm(0, false, true, true), Charset.forName("ASCII"));
            }
            private String value;
            private SwitchManualEnum _root;
            private SwitchManualEnum.Opcode _parent;
            public String value() { return value; }
            public SwitchManualEnum _root() { return _root; }
            public SwitchManualEnum.Opcode _parent() { return _parent; }
        }
        private CodeEnum code;
        private KaitaiStruct body;
        private SwitchManualEnum _root;
        private SwitchManualEnum _parent;
        public CodeEnum code() { return code; }
        public KaitaiStruct body() { return body; }
        public SwitchManualEnum _root() { return _root; }
        public SwitchManualEnum _parent() { return _parent; }
    }
    private ArrayList<Opcode> opcodes;
    private SwitchManualEnum _root;
    private KaitaiStruct _parent;
    public ArrayList<Opcode> opcodes() { return opcodes; }
    public SwitchManualEnum _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
