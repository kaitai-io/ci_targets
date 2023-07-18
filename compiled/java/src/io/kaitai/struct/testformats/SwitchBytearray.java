// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.nio.charset.StandardCharsets;

public class SwitchBytearray extends KaitaiStruct {
    public static SwitchBytearray fromFile(String fileName) throws IOException {
        return new SwitchBytearray(new ByteBufferKaitaiStream(fileName));
    }

    public SwitchBytearray(KaitaiStream _io) {
        this(_io, null, null);
    }

    public SwitchBytearray(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public SwitchBytearray(KaitaiStream _io, KaitaiStruct _parent, SwitchBytearray _root) {
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

        public Opcode(KaitaiStream _io, SwitchBytearray _parent) {
            this(_io, _parent, null);
        }

        public Opcode(KaitaiStream _io, SwitchBytearray _parent, SwitchBytearray _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
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
                return new Intval(new ByteBufferKaitaiStream(fileName));
            }

            public Intval(KaitaiStream _io) {
                this(_io, null, null);
            }

            public Intval(KaitaiStream _io, SwitchBytearray.Opcode _parent) {
                this(_io, _parent, null);
            }

            public Intval(KaitaiStream _io, SwitchBytearray.Opcode _parent, SwitchBytearray _root) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
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
                return new Strval(new ByteBufferKaitaiStream(fileName));
            }

            public Strval(KaitaiStream _io) {
                this(_io, null, null);
            }

            public Strval(KaitaiStream _io, SwitchBytearray.Opcode _parent) {
                this(_io, _parent, null);
            }

            public Strval(KaitaiStream _io, SwitchBytearray.Opcode _parent, SwitchBytearray _root) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
                _read();
            }
            private void _read() {
                this.value = new String(this._io.readBytesTerm((byte) 0, false, true, true), StandardCharsets.US_ASCII);
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
