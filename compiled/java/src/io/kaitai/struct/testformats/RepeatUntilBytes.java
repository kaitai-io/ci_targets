// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class RepeatUntilBytes extends KaitaiStruct {
    public static RepeatUntilBytes fromFile(String fileName) throws IOException {
        return new RepeatUntilBytes(new ByteBufferKaitaiStream(fileName));
    }

    public RepeatUntilBytes(KaitaiStream _io) {
        this(_io, null, null);
    }

    public RepeatUntilBytes(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public RepeatUntilBytes(KaitaiStream _io, KaitaiStruct _parent, RepeatUntilBytes _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.records = new ArrayList<byte[]>();
        {
            byte[] _it;
            int i = 0;
            do {
                _it = this._io.readBytes(5);
                this.records.add(_it);
                i++;
            } while (!((_it[((int) 0)] & 0xff) == 170));
        }
    }

    public void _fetchInstances() {
        for (int i = 0; i < this.records.size(); i++) {
        }
    }
    private List<byte[]> records;
    private RepeatUntilBytes _root;
    private KaitaiStruct _parent;
    public List<byte[]> records() { return records; }
    public RepeatUntilBytes _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
