// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class RepeatUntilBytesPad extends KaitaiStruct {
    public static RepeatUntilBytesPad fromFile(String fileName) throws IOException {
        return new RepeatUntilBytesPad(new ByteBufferKaitaiStream(fileName));
    }

    public RepeatUntilBytesPad(KaitaiStream _io) {
        this(_io, null, null);
    }

    public RepeatUntilBytesPad(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public RepeatUntilBytesPad(KaitaiStream _io, KaitaiStruct _parent, RepeatUntilBytesPad _root) {
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
                _it = KaitaiStream.bytesStripRight(this._io.readBytes(5), (byte) 170);
                this.records.add(_it);
                i++;
            } while (!(_it.length == 5));
        }
    }

    public void _fetchInstances() {
        for (int i = 0; i < this.records.size(); i++) {
        }
    }
    private List<byte[]> records;
    private RepeatUntilBytesPad _root;
    private KaitaiStruct _parent;
    public List<byte[]> records() { return records; }
    public RepeatUntilBytesPad _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
