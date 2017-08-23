// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;

namespace Kaitai
{
    public partial class IndexToParamUntil : KaitaiStruct
    {
        public static IndexToParamUntil FromFile(string fileName)
        {
            return new IndexToParamUntil(new KaitaiStream(fileName));
        }

        public IndexToParamUntil(KaitaiStream p__io, KaitaiStruct p__parent = null, IndexToParamUntil p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _qty = m_io.ReadU4le();
            _sizes = new List<uint>((int) (Qty));
            for (var i = 0; i < Qty; i++)
            {
                _sizes.Add(m_io.ReadU4le());
            }
            _blocks = new List<Block>();
            {
                var i = 0;
                Block M_;
                do {
                    M_ = new Block(i, m_io, this, m_root);
                    _blocks.Add(M_);
                    i++;
                } while (!(M_Io.IsEof));
            }
        }
        public partial class Block : KaitaiStruct
        {
            public Block(int p_idx, KaitaiStream p__io, IndexToParamUntil p__parent = null, IndexToParamUntil p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _idx = p_idx;
                _read();
            }
            private void _read()
            {
                _buf = System.Text.Encoding.GetEncoding("ASCII").GetString(m_io.ReadBytes(M_Root.Sizes[Idx]));
            }
            private string _buf;
            private int _idx;
            private IndexToParamUntil m_root;
            private IndexToParamUntil m_parent;
            public string Buf { get { return _buf; } }
            public int Idx { get { return _idx; } }
            public IndexToParamUntil M_Root { get { return m_root; } }
            public IndexToParamUntil M_Parent { get { return m_parent; } }
        }
        private uint _qty;
        private List<uint> _sizes;
        private List<Block> _blocks;
        private IndexToParamUntil m_root;
        private KaitaiStruct m_parent;
        public uint Qty { get { return _qty; } }
        public List<uint> Sizes { get { return _sizes; } }
        public List<Block> Blocks { get { return _blocks; } }
        public IndexToParamUntil M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
