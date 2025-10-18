// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class RepeatNBytesPad extends KaitaiStruct {
    public static RepeatNBytesPad fromFile(String fileName) throws IOException {
        return new RepeatNBytesPad(new ByteBufferKaitaiStream(fileName));
    }

    public RepeatNBytesPad(KaitaiStream _io) {
        this(_io, null, null);
    }

    public RepeatNBytesPad(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public RepeatNBytesPad(KaitaiStream _io, KaitaiStruct _parent, RepeatNBytesPad _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.records = new ArrayList<byte[]>();
        for (int i = 0; i < 3; i++) {
            this.records.add(KaitaiStream.bytesStripRight(this._io.readBytes(5), (byte) 170));
        }
    }

    public void _fetchInstances() {
        for (int i = 0; i < this.records.size(); i++) {
        }
    }
    public List<byte[]> records() { return records; }
    public RepeatNBytesPad _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private List<byte[]> records;
    private RepeatNBytesPad _root;
    private KaitaiStruct _parent;
}
