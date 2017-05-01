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

public class SwitchManualStr extends KaitaiStruct {
    public static SwitchManualStr fromFile(String fileName) throws IOException {
        return new SwitchManualStr(new KaitaiStream(fileName));
    }

    public SwitchManualStr(KaitaiStream _io) {
        super(_io);
        this._root = this;
        _read();
    }

    public SwitchManualStr(KaitaiStream _io, KaitaiStruct _parent) {
        super(_io);
        this._parent = _parent;
        this._root = this;
        _read();
    }

    public SwitchManualStr(KaitaiStream _io, KaitaiStruct _parent, SwitchManualStr _root) {
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

        public Opcode(KaitaiStream _io) {
            super(_io);
            _read();
        }

        public Opcode(KaitaiStream _io, SwitchManualStr _parent) {
            super(_io);
            this._parent = _parent;
            _read();
        }

        public Opcode(KaitaiStream _io, SwitchManualStr _parent, SwitchManualStr _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.code = new String(this._io.readBytes(1), Charset.forName("ASCII"));
            switch (code()) {
            case "I": {
                this.body = new Intval(this._io, this, _root);
                break;
            }
            case "S": {
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

            public Intval(KaitaiStream _io, SwitchManualStr.Opcode _parent) {
                super(_io);
                this._parent = _parent;
                _read();
            }

            public Intval(KaitaiStream _io, SwitchManualStr.Opcode _parent, SwitchManualStr _root) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
                _read();
            }
            private void _read() {
                this.value = this._io.readU1();
            }
            private int value;
            private SwitchManualStr _root;
            private SwitchManualStr.Opcode _parent;
            public int value() { return value; }
            public SwitchManualStr _root() { return _root; }
            public SwitchManualStr.Opcode _parent() { return _parent; }
        }
        public static class Strval extends KaitaiStruct {
            public static Strval fromFile(String fileName) throws IOException {
                return new Strval(new KaitaiStream(fileName));
            }

            public Strval(KaitaiStream _io) {
                super(_io);
                _read();
            }

            public Strval(KaitaiStream _io, SwitchManualStr.Opcode _parent) {
                super(_io);
                this._parent = _parent;
                _read();
            }

            public Strval(KaitaiStream _io, SwitchManualStr.Opcode _parent, SwitchManualStr _root) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
                _read();
            }
            private void _read() {
                this.value = new String(this._io.readBytesTerm(0, false, true, true), Charset.forName("ASCII"));
            }
            private String value;
            private SwitchManualStr _root;
            private SwitchManualStr.Opcode _parent;
            public String value() { return value; }
            public SwitchManualStr _root() { return _root; }
            public SwitchManualStr.Opcode _parent() { return _parent; }
        }
        private String code;
        private KaitaiStruct body;
        private SwitchManualStr _root;
        private SwitchManualStr _parent;
        public String code() { return code; }
        public KaitaiStruct body() { return body; }
        public SwitchManualStr _root() { return _root; }
        public SwitchManualStr _parent() { return _parent; }
    }
    private ArrayList<Opcode> opcodes;
    private SwitchManualStr _root;
    private KaitaiStruct _parent;
    public ArrayList<Opcode> opcodes() { return opcodes; }
    public SwitchManualStr _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
