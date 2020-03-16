// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import java.nio.charset.Charset;

public class SwitchManualStrElse extends KaitaiStruct {
    public static SwitchManualStrElse fromFile(String fileName) throws IOException {
        return new SwitchManualStrElse(new ByteBufferKaitaiStream(fileName));
    }

    public SwitchManualStrElse(KaitaiStream _io) {
        this(_io, null, null);
    }

    public SwitchManualStrElse(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public SwitchManualStrElse(KaitaiStream _io, KaitaiStruct _parent, SwitchManualStrElse _root) {
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
            default: {
                this.body = new Noneval(this._io, this, _root);
                break;
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

            public Intval(KaitaiStream _io, SwitchManualStrElse.Opcode _parent) {
                this(_io, _parent, null);
            }

            public Intval(KaitaiStream _io, SwitchManualStrElse.Opcode _parent, SwitchManualStrElse _root) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
                _read();
            }
            private void _read() {
                this.value = this._io.readU1();
            }
            private int value;
            private SwitchManualStrElse _root;
            private SwitchManualStrElse.Opcode _parent;
            public int value() { return value; }
            public SwitchManualStrElse _root() { return _root; }
            public SwitchManualStrElse.Opcode _parent() { return _parent; }
        }
        public static class Strval extends KaitaiStruct {
            public static Strval fromFile(String fileName) throws IOException {
                return new Strval(new ByteBufferKaitaiStream(fileName));
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
                _read();
            }
            private void _read() {
                this.value = new String(this._io.readBytesTerm(0, false, true, true), Charset.forName("ASCII"));
            }
            private String value;
            private SwitchManualStrElse _root;
            private SwitchManualStrElse.Opcode _parent;
            public String value() { return value; }
            public SwitchManualStrElse _root() { return _root; }
            public SwitchManualStrElse.Opcode _parent() { return _parent; }
        }
        public static class Noneval extends KaitaiStruct {
            public static Noneval fromFile(String fileName) throws IOException {
                return new Noneval(new ByteBufferKaitaiStream(fileName));
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
                _read();
            }
            private void _read() {
                this.filler = this._io.readU4le();
            }
            private long filler;
            private SwitchManualStrElse _root;
            private SwitchManualStrElse.Opcode _parent;
            public long filler() { return filler; }
            public SwitchManualStrElse _root() { return _root; }
            public SwitchManualStrElse.Opcode _parent() { return _parent; }
        }
        private String code;
        private KaitaiStruct body;
        private SwitchManualStrElse _root;
        private SwitchManualStrElse _parent;
        public String code() { return code; }
        public KaitaiStruct body() { return body; }
        public SwitchManualStrElse _root() { return _root; }
        public SwitchManualStrElse _parent() { return _parent; }
    }
    private ArrayList<Opcode> opcodes;
    private SwitchManualStrElse _root;
    private KaitaiStruct _parent;
    public ArrayList<Opcode> opcodes() { return opcodes; }
    public SwitchManualStrElse _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
