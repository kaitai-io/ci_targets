// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class SwitchIntegers extends KaitaiStruct {
    public static SwitchIntegers fromFile(String fileName) throws IOException {
        return new SwitchIntegers(new ByteBufferKaitaiStream(fileName));
    }

    public SwitchIntegers(KaitaiStream _io) {
        this(_io, null, null);
    }

    public SwitchIntegers(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public SwitchIntegers(KaitaiStream _io, KaitaiStruct _parent, SwitchIntegers _root) {
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

        public Opcode(KaitaiStream _io, SwitchIntegers _parent) {
            this(_io, _parent, null);
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
                this.body = ((Number) (this._io.readU1())).longValue();
                break;
            }
            case 2: {
                this.body = ((Number) (this._io.readU2le())).longValue();
                break;
            }
            case 4: {
                this.body = ((Number) (this._io.readU4le())).longValue();
                break;
            }
            case 8: {
                this.body = this._io.readU8le();
                break;
            }
            }
        }

        public void _fetchInstances() {
            switch (code()) {
            case 1: {
                break;
            }
            case 2: {
                break;
            }
            case 4: {
                break;
            }
            case 8: {
                break;
            }
            }
        }
        public int code() { return code; }
        public Long body() { return body; }
        public SwitchIntegers _root() { return _root; }
        public SwitchIntegers _parent() { return _parent; }
        private int code;
        private Long body;
        private SwitchIntegers _root;
        private SwitchIntegers _parent;
    }
    public List<Opcode> opcodes() { return opcodes; }
    public SwitchIntegers _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private List<Opcode> opcodes;
    private SwitchIntegers _root;
    private KaitaiStruct _parent;
}
