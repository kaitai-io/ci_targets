// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import io.kaitai.struct.ConsistencyError;
import java.util.Objects;
import java.nio.charset.StandardCharsets;
import java.nio.charset.Charset;
import java.util.List;

public class SwitchManualIntSizeEos extends KaitaiStruct.ReadWrite {
    public static SwitchManualIntSizeEos fromFile(String fileName) throws IOException {
        return new SwitchManualIntSizeEos(new ByteBufferKaitaiStream(fileName));
    }
    public SwitchManualIntSizeEos() {
        this(null, null, null);
    }

    public SwitchManualIntSizeEos(KaitaiStream _io) {
        this(_io, null, null);
    }

    public SwitchManualIntSizeEos(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public SwitchManualIntSizeEos(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, SwitchManualIntSizeEos _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.chunks = new ArrayList<Chunk>();
        {
            int i = 0;
            while (!this._io.isEof()) {
                Chunk _t_chunks = new Chunk(this._io, this, _root);
                try {
                    _t_chunks._read();
                } finally {
                    this.chunks.add(_t_chunks);
                }
                i++;
            }
        }
        _dirty = false;
    }

    public void _fetchInstances() {
        for (int i = 0; i < this.chunks.size(); i++) {
            this.chunks.get(((Number) (i)).intValue())._fetchInstances();
        }
    }

    public void _write_Seq() {
        _assertNotDirty();
        for (int i = 0; i < this.chunks.size(); i++) {
            if (this._io.isEof())
                throw new ConsistencyError("chunks", 0, this._io.size() - this._io.pos());
            this.chunks.get(((Number) (i)).intValue())._write_Seq(this._io);
        }
        if (!(this._io.isEof()))
            throw new ConsistencyError("chunks", 0, this._io.size() - this._io.pos());
    }

    public void _check() {
        for (int i = 0; i < this.chunks.size(); i++) {
            if (!Objects.equals(this.chunks.get(((Number) (i)).intValue())._root(), _root()))
                throw new ConsistencyError("chunks", _root(), this.chunks.get(((Number) (i)).intValue())._root());
            if (!Objects.equals(this.chunks.get(((Number) (i)).intValue())._parent(), this))
                throw new ConsistencyError("chunks", this, this.chunks.get(((Number) (i)).intValue())._parent());
        }
        _dirty = false;
    }
    public static class Chunk extends KaitaiStruct.ReadWrite {
        public static Chunk fromFile(String fileName) throws IOException {
            return new Chunk(new ByteBufferKaitaiStream(fileName));
        }
        public Chunk() {
            this(null, null, null);
        }

        public Chunk(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Chunk(KaitaiStream _io, SwitchManualIntSizeEos _parent) {
            this(_io, _parent, null);
        }

        public Chunk(KaitaiStream _io, SwitchManualIntSizeEos _parent, SwitchManualIntSizeEos _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.code = this._io.readU1();
            this.size = this._io.readU4le();
            this._raw_body = this._io.readBytes(size());
            KaitaiStream _io__raw_body = new ByteBufferKaitaiStream(this._raw_body);
            this.body = new ChunkBody(_io__raw_body, this, _root);
            this.body._read();
            _dirty = false;
        }

        public void _fetchInstances() {
            this.body._fetchInstances();
        }

        public void _write_Seq() {
            _assertNotDirty();
            this._io.writeU1(this.code);
            this._io.writeU4le(this.size);
            final KaitaiStream _io__raw_body = new ByteBufferKaitaiStream(size());
            this._io.addChildStream(_io__raw_body);
            {
                long _pos2 = this._io.pos();
                this._io.seek(this._io.pos() + (size()));
                final Chunk _this = this;
                _io__raw_body.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                    @Override
                    protected void write(KaitaiStream parent) {
                        _this._raw_body = _io__raw_body.toByteArray();
                        if (_this._raw_body.length != size())
                            throw new ConsistencyError("raw(body)", size(), _this._raw_body.length);
                        parent.writeBytes(_this._raw_body);
                    }
                });
            }
            this.body._write_Seq(_io__raw_body);
        }

        public void _check() {
            if (!Objects.equals(this.body._root(), _root()))
                throw new ConsistencyError("body", _root(), this.body._root());
            if (!Objects.equals(this.body._parent(), this))
                throw new ConsistencyError("body", this, this.body._parent());
            _dirty = false;
        }
        public int code() { return code; }
        public void setCode(int _v) { _dirty = true; code = _v; }
        public long size() { return size; }
        public void setSize(long _v) { _dirty = true; size = _v; }
        public ChunkBody body() { return body; }
        public void setBody(ChunkBody _v) { _dirty = true; body = _v; }
        public SwitchManualIntSizeEos _root() { return _root; }
        public void set_root(SwitchManualIntSizeEos _v) { _dirty = true; _root = _v; }
        public SwitchManualIntSizeEos _parent() { return _parent; }
        public void set_parent(SwitchManualIntSizeEos _v) { _dirty = true; _parent = _v; }
        public byte[] _raw_body() { return _raw_body; }
        public void set_raw_Body(byte[] _v) { _dirty = true; _raw_body = _v; }
        private int code;
        private long size;
        private ChunkBody body;
        private SwitchManualIntSizeEos _root;
        private SwitchManualIntSizeEos _parent;
        private byte[] _raw_body;
    }
    public static class ChunkBody extends KaitaiStruct.ReadWrite {
        public static ChunkBody fromFile(String fileName) throws IOException {
            return new ChunkBody(new ByteBufferKaitaiStream(fileName));
        }
        public ChunkBody() {
            this(null, null, null);
        }

        public ChunkBody(KaitaiStream _io) {
            this(_io, null, null);
        }

        public ChunkBody(KaitaiStream _io, SwitchManualIntSizeEos.Chunk _parent) {
            this(_io, _parent, null);
        }

        public ChunkBody(KaitaiStream _io, SwitchManualIntSizeEos.Chunk _parent, SwitchManualIntSizeEos _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            switch (_parent().code()) {
            case 17: {
                this._raw_body = this._io.readBytesFull();
                KaitaiStream _io__raw_body = new ByteBufferKaitaiStream(this._raw_body);
                this.body = new ChunkMeta(_io__raw_body, this, _root);
                ((ChunkMeta) (this.body))._read();
                break;
            }
            case 34: {
                this._raw_body = this._io.readBytesFull();
                KaitaiStream _io__raw_body = new ByteBufferKaitaiStream(this._raw_body);
                this.body = new ChunkDir(_io__raw_body, this, _root);
                ((ChunkDir) (this.body))._read();
                break;
            }
            default: {
                this.body = this._io.readBytesFull();
                break;
            }
            }
            _dirty = false;
        }

        public void _fetchInstances() {
            switch (_parent().code()) {
            case 17: {
                ((ChunkMeta) (this.body))._fetchInstances();
                break;
            }
            case 34: {
                ((ChunkDir) (this.body))._fetchInstances();
                break;
            }
            default: {
                break;
            }
            }
        }

        public void _write_Seq() {
            _assertNotDirty();
            switch (_parent().code()) {
            case 17: {
                final KaitaiStream _io__raw_body = new ByteBufferKaitaiStream(this._io.size() - this._io.pos());
                this._io.addChildStream(_io__raw_body);
                {
                    long _pos2 = this._io.pos();
                    this._io.seek(this._io.pos() + (this._io.size() - this._io.pos()));
                    final ChunkBody _this = this;
                    _io__raw_body.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                        @Override
                        protected void write(KaitaiStream parent) {
                            _this._raw_body = _io__raw_body.toByteArray();
                            parent.writeBytes(((byte[]) (((byte[]) (_this._raw_body)))));
                            if (!(parent.isEof()))
                                throw new ConsistencyError("raw(body)", 0, parent.size() - parent.pos());
                        }
                    });
                }
                ((ChunkMeta) (this.body))._write_Seq(_io__raw_body);
                break;
            }
            case 34: {
                final KaitaiStream _io__raw_body = new ByteBufferKaitaiStream(this._io.size() - this._io.pos());
                this._io.addChildStream(_io__raw_body);
                {
                    long _pos2 = this._io.pos();
                    this._io.seek(this._io.pos() + (this._io.size() - this._io.pos()));
                    final ChunkBody _this = this;
                    _io__raw_body.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                        @Override
                        protected void write(KaitaiStream parent) {
                            _this._raw_body = _io__raw_body.toByteArray();
                            parent.writeBytes(((byte[]) (((byte[]) (_this._raw_body)))));
                            if (!(parent.isEof()))
                                throw new ConsistencyError("raw(body)", 0, parent.size() - parent.pos());
                        }
                    });
                }
                ((ChunkDir) (this.body))._write_Seq(_io__raw_body);
                break;
            }
            default: {
                this._io.writeBytes(((byte[]) (((byte[]) (this.body)))));
                if (!(this._io.isEof()))
                    throw new ConsistencyError("body", 0, this._io.size() - this._io.pos());
                break;
            }
            }
        }

        public void _check() {
            switch (_parent().code()) {
            case 17: {
                if (!Objects.equals(((SwitchManualIntSizeEos.ChunkBody.ChunkMeta) (this.body))._root(), _root()))
                    throw new ConsistencyError("body", _root(), ((SwitchManualIntSizeEos.ChunkBody.ChunkMeta) (this.body))._root());
                if (!Objects.equals(((SwitchManualIntSizeEos.ChunkBody.ChunkMeta) (this.body))._parent(), this))
                    throw new ConsistencyError("body", this, ((SwitchManualIntSizeEos.ChunkBody.ChunkMeta) (this.body))._parent());
                break;
            }
            case 34: {
                if (!Objects.equals(((SwitchManualIntSizeEos.ChunkBody.ChunkDir) (this.body))._root(), _root()))
                    throw new ConsistencyError("body", _root(), ((SwitchManualIntSizeEos.ChunkBody.ChunkDir) (this.body))._root());
                if (!Objects.equals(((SwitchManualIntSizeEos.ChunkBody.ChunkDir) (this.body))._parent(), this))
                    throw new ConsistencyError("body", this, ((SwitchManualIntSizeEos.ChunkBody.ChunkDir) (this.body))._parent());
                break;
            }
            default: {
                break;
            }
            }
            _dirty = false;
        }
        public static class ChunkDir extends KaitaiStruct.ReadWrite {
            public static ChunkDir fromFile(String fileName) throws IOException {
                return new ChunkDir(new ByteBufferKaitaiStream(fileName));
            }
            public ChunkDir() {
                this(null, null, null);
            }

            public ChunkDir(KaitaiStream _io) {
                this(_io, null, null);
            }

            public ChunkDir(KaitaiStream _io, SwitchManualIntSizeEos.ChunkBody _parent) {
                this(_io, _parent, null);
            }

            public ChunkDir(KaitaiStream _io, SwitchManualIntSizeEos.ChunkBody _parent, SwitchManualIntSizeEos _root) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
            }
            public void _read() {
                this.entries = new ArrayList<String>();
                {
                    int i = 0;
                    while (!this._io.isEof()) {
                        this.entries.add(new String(this._io.readBytes(4), StandardCharsets.UTF_8));
                        i++;
                    }
                }
                _dirty = false;
            }

            public void _fetchInstances() {
                for (int i = 0; i < this.entries.size(); i++) {
                }
            }

            public void _write_Seq() {
                _assertNotDirty();
                for (int i = 0; i < this.entries.size(); i++) {
                    if (this._io.isEof())
                        throw new ConsistencyError("entries", 0, this._io.size() - this._io.pos());
                    this._io.writeBytes((this.entries.get(((Number) (i)).intValue())).getBytes(Charset.forName("UTF-8")));
                }
                if (!(this._io.isEof()))
                    throw new ConsistencyError("entries", 0, this._io.size() - this._io.pos());
            }

            public void _check() {
                for (int i = 0; i < this.entries.size(); i++) {
                    if ((this.entries.get(((Number) (i)).intValue())).getBytes(Charset.forName("UTF-8")).length != 4)
                        throw new ConsistencyError("entries", 4, (this.entries.get(((Number) (i)).intValue())).getBytes(Charset.forName("UTF-8")).length);
                }
                _dirty = false;
            }
            public List<String> entries() { return entries; }
            public void setEntries(List<String> _v) { _dirty = true; entries = _v; }
            public SwitchManualIntSizeEos _root() { return _root; }
            public void set_root(SwitchManualIntSizeEos _v) { _dirty = true; _root = _v; }
            public SwitchManualIntSizeEos.ChunkBody _parent() { return _parent; }
            public void set_parent(SwitchManualIntSizeEos.ChunkBody _v) { _dirty = true; _parent = _v; }
            private List<String> entries;
            private SwitchManualIntSizeEos _root;
            private SwitchManualIntSizeEos.ChunkBody _parent;
        }
        public static class ChunkMeta extends KaitaiStruct.ReadWrite {
            public static ChunkMeta fromFile(String fileName) throws IOException {
                return new ChunkMeta(new ByteBufferKaitaiStream(fileName));
            }
            public ChunkMeta() {
                this(null, null, null);
            }

            public ChunkMeta(KaitaiStream _io) {
                this(_io, null, null);
            }

            public ChunkMeta(KaitaiStream _io, SwitchManualIntSizeEos.ChunkBody _parent) {
                this(_io, _parent, null);
            }

            public ChunkMeta(KaitaiStream _io, SwitchManualIntSizeEos.ChunkBody _parent, SwitchManualIntSizeEos _root) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
            }
            public void _read() {
                this.title = new String(this._io.readBytesTerm((byte) 0, false, true, true), StandardCharsets.UTF_8);
                this.author = new String(this._io.readBytesTerm((byte) 0, false, true, true), StandardCharsets.UTF_8);
                _dirty = false;
            }

            public void _fetchInstances() {
            }

            public void _write_Seq() {
                _assertNotDirty();
                this._io.writeBytes((this.title).getBytes(Charset.forName("UTF-8")));
                this._io.writeU1(0);
                this._io.writeBytes((this.author).getBytes(Charset.forName("UTF-8")));
                this._io.writeU1(0);
            }

            public void _check() {
                if (KaitaiStream.byteArrayIndexOf((this.title).getBytes(Charset.forName("UTF-8")), ((byte) 0)) != -1)
                    throw new ConsistencyError("title", -1, KaitaiStream.byteArrayIndexOf((this.title).getBytes(Charset.forName("UTF-8")), ((byte) 0)));
                if (KaitaiStream.byteArrayIndexOf((this.author).getBytes(Charset.forName("UTF-8")), ((byte) 0)) != -1)
                    throw new ConsistencyError("author", -1, KaitaiStream.byteArrayIndexOf((this.author).getBytes(Charset.forName("UTF-8")), ((byte) 0)));
                _dirty = false;
            }
            public String title() { return title; }
            public void setTitle(String _v) { _dirty = true; title = _v; }
            public String author() { return author; }
            public void setAuthor(String _v) { _dirty = true; author = _v; }
            public SwitchManualIntSizeEos _root() { return _root; }
            public void set_root(SwitchManualIntSizeEos _v) { _dirty = true; _root = _v; }
            public SwitchManualIntSizeEos.ChunkBody _parent() { return _parent; }
            public void set_parent(SwitchManualIntSizeEos.ChunkBody _v) { _dirty = true; _parent = _v; }
            private String title;
            private String author;
            private SwitchManualIntSizeEos _root;
            private SwitchManualIntSizeEos.ChunkBody _parent;
        }
        public Object body() { return body; }
        public void setBody(Object _v) { _dirty = true; body = _v; }
        public SwitchManualIntSizeEos _root() { return _root; }
        public void set_root(SwitchManualIntSizeEos _v) { _dirty = true; _root = _v; }
        public SwitchManualIntSizeEos.Chunk _parent() { return _parent; }
        public void set_parent(SwitchManualIntSizeEos.Chunk _v) { _dirty = true; _parent = _v; }
        public byte[] _raw_body() { return _raw_body; }
        public void set_raw_Body(byte[] _v) { _dirty = true; _raw_body = _v; }
        private Object body;
        private SwitchManualIntSizeEos _root;
        private SwitchManualIntSizeEos.Chunk _parent;
        private byte[] _raw_body;
    }
    public List<Chunk> chunks() { return chunks; }
    public void setChunks(List<Chunk> _v) { _dirty = true; chunks = _v; }
    public SwitchManualIntSizeEos _root() { return _root; }
    public void set_root(SwitchManualIntSizeEos _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    private List<Chunk> chunks;
    private SwitchManualIntSizeEos _root;
    private KaitaiStruct.ReadWrite _parent;
}
