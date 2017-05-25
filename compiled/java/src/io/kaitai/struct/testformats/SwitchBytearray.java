// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.nio.charset.Charset;

public class SwitchBytearray extends KaitaiStruct {
    public static SwitchBytearray fromFile(String fileName) throws IOException {
        return new SwitchBytearray(new KaitaiStream(fileName));
    }

    public SwitchBytearray(KaitaiStream _io) {
        super(_io);
        this._root = this;
        _init();
    }

    public SwitchBytearray(KaitaiStream _io, KaitaiStruct _parent) {
        super(_io);
        this._parent = _parent;
        this._root = this;
        _init();
    }

    public SwitchBytearray(KaitaiStream _io, KaitaiStruct _parent, SwitchBytearray _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root;
        _init();
    }

    private void _init() {
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
            _init();
        }

        public Opcode(KaitaiStream _io, SwitchBytearray _parent) {
            super(_io);
            this._parent = _parent;
            _init();
        }

        public Opcode(KaitaiStream _io, SwitchBytearray _parent, SwitchBytearray _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _init();
        }

        private void _init() {
            _read();
        }
        private void _read() {
            this.code = this._io.readBytes(1);
            {
                byte[] on = code();
                if (Arrays.equals(on, new byte[] { 73 })) {
                    this.body = new Intval(this._io, this, _root);
                }
                else if (Arrays.equals(on, new byte[] { 83 })) {
                    this.body = new Strval(this._io, this, _root);
                }
            }
        }
        public static class Intval extends KaitaiStruct {
            public static Intval fromFile(String fileName) throws IOException {
                return new Intval(new KaitaiStream(fileName));
            }

            public Intval(KaitaiStream _io) {
                super(_io);
                _init();
            }

            public Intval(KaitaiStream _io, SwitchBytearray.Opcode _parent) {
                super(_io);
                this._parent = _parent;
                _init();
            }

            public Intval(KaitaiStream _io, SwitchBytearray.Opcode _parent, SwitchBytearray _root) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
                _init();
            }

            private void _init() {
                _read();
            }
            private void _read() {
                this.value = this._io.readU1();
            }
            private int value;
            private SwitchBytearray _root;
            private SwitchBytearray.Opcode _parent;
            public int value() { return value; }
            public SwitchBytearray _root() { return _root; }
            public SwitchBytearray.Opcode _parent() { return _parent; }
        }
        public static class Strval extends KaitaiStruct {
            public static Strval fromFile(String fileName) throws IOException {
                return new Strval(new KaitaiStream(fileName));
            }

            public Strval(KaitaiStream _io) {
                super(_io);
                _init();
            }

            public Strval(KaitaiStream _io, SwitchBytearray.Opcode _parent) {
                super(_io);
                this._parent = _parent;
                _init();
            }

            public Strval(KaitaiStream _io, SwitchBytearray.Opcode _parent, SwitchBytearray _root) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
                _init();
            }

            private void _init() {
                _read();
            }
            private void _read() {
                this.value = new String(this._io.readBytesTerm(0, false, true, true), Charset.forName("ASCII"));
            }
            private String value;
            private SwitchBytearray _root;
            private SwitchBytearray.Opcode _parent;
            public String value() { return value; }
            public SwitchBytearray _root() { return _root; }
            public SwitchBytearray.Opcode _parent() { return _parent; }
        }
        private byte[] code;
        private KaitaiStruct body;
        private SwitchBytearray _root;
        private SwitchBytearray _parent;
        public byte[] code() { return code; }
        public KaitaiStruct body() { return body; }
        public SwitchBytearray _root() { return _root; }
        public SwitchBytearray _parent() { return _parent; }
    }
    private ArrayList<Opcode> opcodes;
    private SwitchBytearray _root;
    private KaitaiStruct _parent;
    public ArrayList<Opcode> opcodes() { return opcodes; }
    public SwitchBytearray _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
