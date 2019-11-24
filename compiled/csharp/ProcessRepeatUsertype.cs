// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;

namespace Kaitai
{
    public partial class ProcessRepeatUsertype : KaitaiStruct
    {
        public static ProcessRepeatUsertype FromFile(string fileName)
        {
            return new ProcessRepeatUsertype(new KaitaiStream(fileName));
        }

        public ProcessRepeatUsertype(KaitaiStream p__io, KaitaiStruct p__parent = null, ProcessRepeatUsertype p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            __raw_blocks = new List<byte[]>((int) (2));
            _blocks = new List<Block>((int) (2));
            for (var i = 0; i < 2; i++)
            {
                __raw__raw_blocks.Add(m_io.ReadBytes(5));
                __raw_blocks = m_io.ProcessXor(__raw__raw_blocks, 158);
                var io___raw_blocks = new KaitaiStream(__raw_blocks[__raw_blocks.Count - 1]);
                _blocks.Add(new Block(io___raw_blocks, this, m_root));
            }
        }
        public partial class Block : KaitaiStruct
        {
            public static Block FromFile(string fileName)
            {
                return new Block(new KaitaiStream(fileName));
            }

            public Block(KaitaiStream p__io, ProcessRepeatUsertype p__parent = null, ProcessRepeatUsertype p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _a = m_io.ReadS4le();
                _b = m_io.ReadS1();
            }
            private int _a;
            private sbyte _b;
            private ProcessRepeatUsertype m_root;
            private ProcessRepeatUsertype m_parent;
            public int A { get { return _a; } }
            public sbyte B { get { return _b; } }
            public ProcessRepeatUsertype M_Root { get { return m_root; } }
            public ProcessRepeatUsertype M_Parent { get { return m_parent; } }
        }
        private List<Block> _blocks;
        private ProcessRepeatUsertype m_root;
        private KaitaiStruct m_parent;
        private List<byte[]> __raw_blocks;
        private List<byte[]> __raw__raw_blocks;
        public List<Block> Blocks { get { return _blocks; } }
        public ProcessRepeatUsertype M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        public List<byte[]> M_RawBlocks { get { return __raw_blocks; } }
        public List<byte[]> M_RawM_RawBlocks { get { return __raw__raw_blocks; } }
    }
}
