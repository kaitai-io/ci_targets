// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class RepeatNTermBytes extends KaitaiStruct {
    public static RepeatNTermBytes fromFile(String fileName) throws IOException {
        return new RepeatNTermBytes(new ByteBufferKaitaiStream(fileName));
    }

    public RepeatNTermBytes(KaitaiStream _io) {
        this(_io, null, null);
    }

    public RepeatNTermBytes(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public RepeatNTermBytes(KaitaiStream _io, KaitaiStruct _parent, RepeatNTermBytes _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.records1 = new ArrayList<byte[]>();
        for (int i = 0; i < 2; i++) {
            this.records1.add(this._io.readBytesTerm((byte) 170, false, true, true));
        }
        this.records2 = new ArrayList<byte[]>();
        for (int i = 0; i < 2; i++) {
            this.records2.add(this._io.readBytesTerm((byte) 170, true, true, true));
        }
        this.records3 = new ArrayList<byte[]>();
        for (int i = 0; i < 2; i++) {
            this.records3.add(this._io.readBytesTerm((byte) 85, false, false, true));
        }
    }

    public void _fetchInstances() {
        for (int i = 0; i < this.records1.size(); i++) {
        }
        for (int i = 0; i < this.records2.size(); i++) {
        }
        for (int i = 0; i < this.records3.size(); i++) {
        }
    }
    public List<byte[]> records1() { return records1; }
    public List<byte[]> records2() { return records2; }
    public List<byte[]> records3() { return records3; }
    public RepeatNTermBytes _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private List<byte[]> records1;
    private List<byte[]> records2;
    private List<byte[]> records3;
    private RepeatNTermBytes _root;
    private KaitaiStruct _parent;
}
