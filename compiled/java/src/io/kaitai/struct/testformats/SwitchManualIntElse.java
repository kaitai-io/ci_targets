// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import java.nio.charset.StandardCharsets;
import java.util.List;

public class SwitchManualIntElse extends KaitaiStruct {
    public static SwitchManualIntElse fromFile(String fileName) throws IOException {
        return new SwitchManualIntElse(new ByteBufferKaitaiStream(fileName));
    }

    public SwitchManualIntElse(KaitaiStream _io) {
        this(_io, null, null);
    }

    public SwitchManualIntElse(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public SwitchManualIntElse(KaitaiStream _io, KaitaiStruct _parent, SwitchManualIntElse _root) {
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

        public Opcode(KaitaiStream _io, SwitchManualIntElse _parent) {
            this(_io, _parent, null);
        }

        public Opcode(KaitaiStream _io, SwitchManualIntElse _parent, SwitchManualIntElse _root) {
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
            default: {
                this.body = new Noneval(this._io, this, _root);
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
            default: {
                ((Noneval) (this.body))._fetchInstances();
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

            public Intval(KaitaiStream _io, SwitchManualIntElse.Opcode _parent) {
                this(_io, _parent, null);
            }

            public Intval(KaitaiStream _io, SwitchManualIntElse.Opcode _parent, SwitchManualIntElse _root) {
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
            private int value;
            private SwitchManualIntElse _root;
            private SwitchManualIntElse.Opcode _parent;
            public int value() { return value; }
            public SwitchManualIntElse _root() { return _root; }
            public SwitchManualIntElse.Opcode _parent() { return _parent; }
        }
        public static class Noneval extends KaitaiStruct {
            public static Noneval fromFile(String fileName) throws IOException {
                return new Noneval(new ByteBufferKaitaiStream(fileName));
            }

            public Noneval(KaitaiStream _io) {
                this(_io, null, null);
            }

            public Noneval(KaitaiStream _io, SwitchManualIntElse.Opcode _parent) {
                this(_io, _parent, null);
            }

            public Noneval(KaitaiStream _io, SwitchManualIntElse.Opcode _parent, SwitchManualIntElse _root) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
                _read();
            }
            private void _read() {
                this.filler = this._io.readU4le();
            }

            public void _fetchInstances() {
            }
            private long filler;
            private SwitchManualIntElse _root;
            private SwitchManualIntElse.Opcode _parent;
            public long filler() { return filler; }
            public SwitchManualIntElse _root() { return _root; }
            public SwitchManualIntElse.Opcode _parent() { return _parent; }
        }
        public static class Strval extends KaitaiStruct {
            public static Strval fromFile(String fileName) throws IOException {
                return new Strval(new ByteBufferKaitaiStream(fileName));
            }

            public Strval(KaitaiStream _io) {
                this(_io, null, null);
            }

            public Strval(KaitaiStream _io, SwitchManualIntElse.Opcode _parent) {
                this(_io, _parent, null);
            }

            public Strval(KaitaiStream _io, SwitchManualIntElse.Opcode _parent, SwitchManualIntElse _root) {
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
            private String value;
            private SwitchManualIntElse _root;
            private SwitchManualIntElse.Opcode _parent;
            public String value() { return value; }
            public SwitchManualIntElse _root() { return _root; }
            public SwitchManualIntElse.Opcode _parent() { return _parent; }
        }
        private int code;
        private KaitaiStruct body;
        private SwitchManualIntElse _root;
        private SwitchManualIntElse _parent;
        public int code() { return code; }
        public KaitaiStruct body() { return body; }
        public SwitchManualIntElse _root() { return _root; }
        public SwitchManualIntElse _parent() { return _parent; }
    }
    private List<Opcode> opcodes;
    private SwitchManualIntElse _root;
    private KaitaiStruct _parent;
    public List<Opcode> opcodes() { return opcodes; }
    public SwitchManualIntElse _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
