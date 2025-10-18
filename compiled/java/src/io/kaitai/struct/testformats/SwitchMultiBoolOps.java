// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class SwitchMultiBoolOps extends KaitaiStruct {
    public static SwitchMultiBoolOps fromFile(String fileName) throws IOException {
        return new SwitchMultiBoolOps(new ByteBufferKaitaiStream(fileName));
    }

    public SwitchMultiBoolOps(KaitaiStream _io) {
        this(_io, null, null);
    }

    public SwitchMultiBoolOps(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public SwitchMultiBoolOps(KaitaiStream _io, KaitaiStruct _parent, SwitchMultiBoolOps _root) {
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

        public Opcode(KaitaiStream _io, SwitchMultiBoolOps _parent) {
            this(_io, _parent, null);
        }

        public Opcode(KaitaiStream _io, SwitchMultiBoolOps _parent, SwitchMultiBoolOps _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.code = this._io.readU1();
            switch (( ((code() > 0) && (code() <= 8) && ((code() != 10 ? true : false)))  ? code() : 0)) {
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
            switch (( ((code() > 0) && (code() <= 8) && ((code() != 10 ? true : false)))  ? code() : 0)) {
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
        public SwitchMultiBoolOps _root() { return _root; }
        public SwitchMultiBoolOps _parent() { return _parent; }
        private int code;
        private Long body;
        private SwitchMultiBoolOps _root;
        private SwitchMultiBoolOps _parent;
    }
    public List<Opcode> opcodes() { return opcodes; }
    public SwitchMultiBoolOps _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private List<Opcode> opcodes;
    private SwitchMultiBoolOps _root;
    private KaitaiStruct _parent;
}
