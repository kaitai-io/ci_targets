// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;

public class SwitchIntegers extends KaitaiStruct {
    public static SwitchIntegers fromFile(String fileName) throws IOException {
        return new SwitchIntegers(new KaitaiStream(fileName));
    }

    public SwitchIntegers(KaitaiStream _io) {
        super(_io);
        this._root = this;
        _read();
    }

    public SwitchIntegers(KaitaiStream _io, KaitaiStruct _parent) {
        super(_io);
        this._parent = _parent;
        this._root = this;
        _read();
    }

    public SwitchIntegers(KaitaiStream _io, KaitaiStruct _parent, SwitchIntegers _root) {
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

        public Opcode(KaitaiStream _io, SwitchIntegers _parent) {
            super(_io);
            this._parent = _parent;
            _read();
        }

        public Opcode(KaitaiStream _io, SwitchIntegers _parent, SwitchIntegers _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.code = this._io.readU1();
            switch (code()) {
            case 1: {
                this.body = this._io.readU1();
                break;
            }
            case 2: {
                this.body = this._io.readU2le();
                break;
            }
            case 4: {
                this.body = this._io.readU4le();
                break;
            }
            case 8: {
                this.body = this._io.readU8le();
                break;
            }
            }
        }
        private int code;
        private long body;
        private SwitchIntegers _root;
        private SwitchIntegers _parent;
        public int code() { return code; }
        public long body() { return body; }
        public SwitchIntegers _root() { return _root; }
        public SwitchIntegers _parent() { return _parent; }
    }
    private ArrayList<Opcode> opcodes;
    private SwitchIntegers _root;
    private KaitaiStruct _parent;
    public ArrayList<Opcode> opcodes() { return opcodes; }
    public SwitchIntegers _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
