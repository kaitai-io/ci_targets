// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class SwitchElseOnly extends KaitaiStruct {
    public static SwitchElseOnly fromFile(String fileName) throws IOException {
        return new SwitchElseOnly(new ByteBufferKaitaiStream(fileName));
    }

    public SwitchElseOnly(KaitaiStream _io) {
        this(_io, null, null);
    }

    public SwitchElseOnly(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public SwitchElseOnly(KaitaiStream _io, KaitaiStruct _parent, SwitchElseOnly _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.opcode = this._io.readS1();
        this.primByte = this._io.readS1();
        this.indicator = this._io.readBytes(4);
        this.ut = new Data(this._io, this, _root);
    }

    public void _fetchInstances() {
        this.ut._fetchInstances();
    }
    public static class Data extends KaitaiStruct {
        public static Data fromFile(String fileName) throws IOException {
            return new Data(new ByteBufferKaitaiStream(fileName));
        }

        public Data(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Data(KaitaiStream _io, SwitchElseOnly _parent) {
            this(_io, _parent, null);
        }

        public Data(KaitaiStream _io, SwitchElseOnly _parent, SwitchElseOnly _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.value = this._io.readBytes(4);
        }

        public void _fetchInstances() {
        }
        public byte[] value() { return value; }
        public SwitchElseOnly _root() { return _root; }
        public SwitchElseOnly _parent() { return _parent; }
        private byte[] value;
        private SwitchElseOnly _root;
        private SwitchElseOnly _parent;
    }
    public byte opcode() { return opcode; }
    public byte primByte() { return primByte; }
    public byte[] indicator() { return indicator; }
    public Data ut() { return ut; }
    public SwitchElseOnly _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private byte opcode;
    private byte primByte;
    private byte[] indicator;
    private Data ut;
    private SwitchElseOnly _root;
    private KaitaiStruct _parent;
}
