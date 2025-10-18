// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import java.nio.charset.StandardCharsets;
import java.util.List;

public class SwitchManualInt extends KaitaiStruct {
    public static SwitchManualInt fromFile(String fileName) throws IOException {
        return new SwitchManualInt(new ByteBufferKaitaiStream(fileName));
    }

    public SwitchManualInt(KaitaiStream _io) {
        this(_io, null, null);
    }

    public SwitchManualInt(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public SwitchManualInt(KaitaiStream _io, KaitaiStruct _parent, SwitchManualInt _root) {
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

    public void _fetchInstances() {
        for (int i = 0; i < this.opcodes.size(); i++) {
            this.opcodes.get(((Number) (i)).intValue())._fetchInstances();
        }
    }
    public static class Opcode extends KaitaiStruct {
        public static Opcode fromFile(String fileName) throws IOException {
            return new Opcode(new ByteBufferKaitaiStream(fileName));
        }

        public Opcode(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Opcode(KaitaiStream _io, SwitchManualInt _parent) {
            this(_io, _parent, null);
        }

        public Opcode(KaitaiStream _io, SwitchManualInt _parent, SwitchManualInt _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.code = this._io.readU1();
            switch (code()) {
            case 73: {
                this.body = new Intval(this._io, this, _root);
                break;
            }
            case 83: {
                this.body = new Strval(this._io, this, _root);
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
        public static class Intval extends KaitaiStruct {
            public static Intval fromFile(String fileName) throws IOException {
                return new Intval(new ByteBufferKaitaiStream(fileName));
            }

            public Intval(KaitaiStream _io) {
                this(_io, null, null);
            }

            public Intval(KaitaiStream _io, SwitchManualInt.Opcode _parent) {
                this(_io, _parent, null);
            }

            public Intval(KaitaiStream _io, SwitchManualInt.Opcode _parent, SwitchManualInt _root) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
                _read();
            }
            private void _read() {
                this.value = this._io.readU1();
            }

            public void _fetchInstances() {
            }
            public int value() { return value; }
            public SwitchManualInt _root() { return _root; }
            public SwitchManualInt.Opcode _parent() { return _parent; }
            private int value;
            private SwitchManualInt _root;
            private SwitchManualInt.Opcode _parent;
        }
        public static class Strval extends KaitaiStruct {
            public static Strval fromFile(String fileName) throws IOException {
                return new Strval(new ByteBufferKaitaiStream(fileName));
            }

            public Strval(KaitaiStream _io) {
                this(_io, null, null);
            }

            public Strval(KaitaiStream _io, SwitchManualInt.Opcode _parent) {
                this(_io, _parent, null);
            }

            public Strval(KaitaiStream _io, SwitchManualInt.Opcode _parent, SwitchManualInt _root) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
                _read();
            }
            private void _read() {
                this.value = new String(this._io.readBytesTerm((byte) 0, false, true, true), StandardCharsets.US_ASCII);
            }

            public void _fetchInstances() {
            }
            public String value() { return value; }
            public SwitchManualInt _root() { return _root; }
            public SwitchManualInt.Opcode _parent() { return _parent; }
            private String value;
            private SwitchManualInt _root;
            private SwitchManualInt.Opcode _parent;
        }
        public int code() { return code; }
        public KaitaiStruct body() { return body; }
        public SwitchManualInt _root() { return _root; }
        public SwitchManualInt _parent() { return _parent; }
        private int code;
        private KaitaiStruct body;
        private SwitchManualInt _root;
        private SwitchManualInt _parent;
    }
    public List<Opcode> opcodes() { return opcodes; }
    public SwitchManualInt _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private List<Opcode> opcodes;
    private SwitchManualInt _root;
    private KaitaiStruct _parent;
}
