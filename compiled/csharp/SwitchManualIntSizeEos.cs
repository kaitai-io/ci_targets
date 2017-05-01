// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System;
using System.Collections.Generic;
using System.Linq;

namespace Kaitai
{
    public partial class SwitchManualIntSizeEos : KaitaiStruct
    {
        public static SwitchManualIntSizeEos FromFile(string fileName)
        {
            return new SwitchManualIntSizeEos(new KaitaiStream(fileName));
        }

        public SwitchManualIntSizeEos(KaitaiStream io, KaitaiStruct parent = null, SwitchManualIntSizeEos root = null) : base(io)
        {
            m_parent = parent;
            m_root = root ?? this;
            _parse();
        }

        private void _parse()
        {
            _chunks = new List<Chunk>();
            while (!m_io.IsEof) {
                _chunks.Add(new Chunk(m_io, this, m_root));
            }
        }
        public partial class Chunk : KaitaiStruct
        {
            public static Chunk FromFile(string fileName)
            {
                return new Chunk(new KaitaiStream(fileName));
            }

            public Chunk(KaitaiStream io, SwitchManualIntSizeEos parent = null, SwitchManualIntSizeEos root = null) : base(io)
            {
                m_parent = parent;
                m_root = root;
                _parse();
            }

            private void _parse()
            {
                _code = m_io.ReadU1();
                _size = m_io.ReadU4le();
                __raw_body = m_io.ReadBytes(Size);
                var io___raw_body = new KaitaiStream(__raw_body);
                _body = new ChunkBody(io___raw_body, this, m_root);
            }
            private byte _code;
            private uint _size;
            private ChunkBody _body;
            private SwitchManualIntSizeEos m_root;
            private SwitchManualIntSizeEos m_parent;
            private byte[] __raw_body;
            public byte Code { get { return _code; } }
            public uint Size { get { return _size; } }
            public ChunkBody Body { get { return _body; } }
            public SwitchManualIntSizeEos M_Root { get { return m_root; } }
            public SwitchManualIntSizeEos M_Parent { get { return m_parent; } }
            public byte[] M_RawBody { get { return __raw_body; } }
        }
        public partial class ChunkBody : KaitaiStruct
        {
            public static ChunkBody FromFile(string fileName)
            {
                return new ChunkBody(new KaitaiStream(fileName));
            }

            public ChunkBody(KaitaiStream io, SwitchManualIntSizeEos.Chunk parent = null, SwitchManualIntSizeEos root = null) : base(io)
            {
                m_parent = parent;
                m_root = root;
                _parse();
            }

            private void _parse()
            {
                switch (M_Parent.Code) {
                case 17: {
                    __raw_body = m_io.ReadBytesFull();
                    var io___raw_body = new KaitaiStream(__raw_body);
                    _body = new ChunkMeta(io___raw_body, this, m_root);
                    break;
                }
                case 34: {
                    __raw_body = m_io.ReadBytesFull();
                    var io___raw_body = new KaitaiStream(__raw_body);
                    _body = new ChunkDir(io___raw_body, this, m_root);
                    break;
                }
                default: {
                    _body = m_io.ReadBytesFull();
                    break;
                }
                }
            }
            public partial class ChunkMeta : KaitaiStruct
            {
                public static ChunkMeta FromFile(string fileName)
                {
                    return new ChunkMeta(new KaitaiStream(fileName));
                }

                public ChunkMeta(KaitaiStream io, SwitchManualIntSizeEos.ChunkBody parent = null, SwitchManualIntSizeEos root = null) : base(io)
                {
                    m_parent = parent;
                    m_root = root;
                    _parse();
                }

                private void _parse()
                {
                    _title = System.Text.Encoding.GetEncoding("UTF-8").GetString(m_io.ReadBytesTerm(0, false, true, true));
                    _author = System.Text.Encoding.GetEncoding("UTF-8").GetString(m_io.ReadBytesTerm(0, false, true, true));
                }
                private string _title;
                private string _author;
                private SwitchManualIntSizeEos m_root;
                private SwitchManualIntSizeEos.ChunkBody m_parent;
                public string Title { get { return _title; } }
                public string Author { get { return _author; } }
                public SwitchManualIntSizeEos M_Root { get { return m_root; } }
                public SwitchManualIntSizeEos.ChunkBody M_Parent { get { return m_parent; } }
            }
            public partial class ChunkDir : KaitaiStruct
            {
                public static ChunkDir FromFile(string fileName)
                {
                    return new ChunkDir(new KaitaiStream(fileName));
                }

                public ChunkDir(KaitaiStream io, SwitchManualIntSizeEos.ChunkBody parent = null, SwitchManualIntSizeEos root = null) : base(io)
                {
                    m_parent = parent;
                    m_root = root;
                    _parse();
                }

                private void _parse()
                {
                    _entries = new List<string>();
                    while (!m_io.IsEof) {
                        _entries.Add(System.Text.Encoding.GetEncoding("UTF-8").GetString(m_io.ReadBytes(4)));
                    }
                }
                private List<string> _entries;
                private SwitchManualIntSizeEos m_root;
                private SwitchManualIntSizeEos.ChunkBody m_parent;
                public List<string> Entries { get { return _entries; } }
                public SwitchManualIntSizeEos M_Root { get { return m_root; } }
                public SwitchManualIntSizeEos.ChunkBody M_Parent { get { return m_parent; } }
            }
            private object _body;
            private SwitchManualIntSizeEos m_root;
            private SwitchManualIntSizeEos.Chunk m_parent;
            private byte[] __raw_body;
            public object Body { get { return _body; } }
            public SwitchManualIntSizeEos M_Root { get { return m_root; } }
            public SwitchManualIntSizeEos.Chunk M_Parent { get { return m_parent; } }
            public byte[] M_RawBody { get { return __raw_body; } }
        }
        private List<Chunk> _chunks;
        private SwitchManualIntSizeEos m_root;
        private KaitaiStruct m_parent;
        public List<Chunk> Chunks { get { return _chunks; } }
        public SwitchManualIntSizeEos M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
