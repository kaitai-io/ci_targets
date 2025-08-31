// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class RepeatEosBytes extends KaitaiStruct {
    public static RepeatEosBytes fromFile(String fileName) throws IOException {
        return new RepeatEosBytes(new ByteBufferKaitaiStream(fileName));
    }

    public RepeatEosBytes(KaitaiStream _io) {
        this(_io, null, null);
    }

    public RepeatEosBytes(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public RepeatEosBytes(KaitaiStream _io, KaitaiStruct _parent, RepeatEosBytes _root) {
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
                this.records.add(this._io.readBytes(5));
                i++;
            }
        }
    }

    public void _fetchInstances() {
        for (int i = 0; i < this.records.size(); i++) {
        }
    }
    private List<byte[]> records;
    private RepeatEosBytes _root;
    private KaitaiStruct _parent;
    public List<byte[]> records() { return records; }
    public RepeatEosBytes _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
