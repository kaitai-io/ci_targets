// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class RepeatEosTermBytes extends KaitaiStruct {
    public static RepeatEosTermBytes fromFile(String fileName) throws IOException {
        return new RepeatEosTermBytes(new ByteBufferKaitaiStream(fileName));
    }

    public RepeatEosTermBytes(KaitaiStream _io) {
        this(_io, null, null);
    }

    public RepeatEosTermBytes(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public RepeatEosTermBytes(KaitaiStream _io, KaitaiStruct _parent, RepeatEosTermBytes _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.records = new ArrayList<byte[]>();
        {
            int i = 0;
            while (!this._io.isEof()) {
                this.records.add(this._io.readBytesTerm((byte) 178, true, true, true));
                i++;
            }
        }
    }

    public void _fetchInstances() {
        for (int i = 0; i < this.records.size(); i++) {
        }
    }
    public List<byte[]> records() { return records; }
    public RepeatEosTermBytes _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private List<byte[]> records;
    private RepeatEosTermBytes _root;
    private KaitaiStruct _parent;
}
