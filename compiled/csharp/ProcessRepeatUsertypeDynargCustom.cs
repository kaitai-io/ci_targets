// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;

namespace Kaitai
{
    public partial class ProcessRepeatUsertypeDynargCustom : KaitaiStruct
    {
        public static ProcessRepeatUsertypeDynargCustom FromFile(string fileName)
        {
            return new ProcessRepeatUsertypeDynargCustom(new KaitaiStream(fileName));
        }

        public ProcessRepeatUsertypeDynargCustom(KaitaiStream p__io, KaitaiStruct p__parent = null, ProcessRepeatUsertypeDynargCustom p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            __raw_blocks = new List<byte[]>();
            __raw__raw_blocks = new List<byte[]>();
            _blocks = new List<Block>();
            for (var i = 0; i < 2; i++)
            {
                __raw__raw_blocks.Add(m_io.ReadBytes(5));
                MyCustomFx _process__raw__raw_blocks = new MyCustomFx(M_Io.Pos + 13 * i, KaitaiStream.Mod(M_Io.Pos, 2) == 0, (i == 1 ? new byte[] { 32, 48 } : new byte[] { 64 }));
                __raw_blocks.Add(_process__raw__raw_blocks.Decode(__raw__raw_blocks[__raw__raw_blocks.Count - 1]));
                var io___raw_blocks = new KaitaiStream(__raw_blocks[__raw_blocks.Count - 1]);
                _blocks.Add(new Block(io___raw_blocks, this, m_root));
            }
            _blocksB = new BlocksBWrapper(m_io, this, m_root);
        }
        public partial class Block : KaitaiStruct
        {
            public static Block FromFile(string fileName)
            {
                return new Block(new KaitaiStream(fileName));
            }

            public Block(KaitaiStream p__io, ProcessRepeatUsertypeDynargCustom p__parent = null, ProcessRepeatUsertypeDynargCustom p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _a = m_io.ReadU4le();
            }
            private uint _a;
            private ProcessRepeatUsertypeDynargCustom m_root;
            private ProcessRepeatUsertypeDynargCustom m_parent;
            public uint A { get { return _a; } }
            public ProcessRepeatUsertypeDynargCustom M_Root { get { return m_root; } }
            public ProcessRepeatUsertypeDynargCustom M_Parent { get { return m_parent; } }
        }
        public partial class BlocksBWrapper : KaitaiStruct
        {
            public static BlocksBWrapper FromFile(string fileName)
            {
                return new BlocksBWrapper(new KaitaiStream(fileName));
            }

            public BlocksBWrapper(KaitaiStream p__io, ProcessRepeatUsertypeDynargCustom p__parent = null, ProcessRepeatUsertypeDynargCustom p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                f_blocks0B = false;
                f_blocks1B = false;
                _read();
            }
            private void _read()
            {
                _dummy = m_io.ReadU1();
            }
            private bool f_blocks0B;
            private byte _blocks0B;
            public byte Blocks0B
            {
                get
                {
                    if (f_blocks0B)
                        return _blocks0B;
                    f_blocks0B = true;
                    KaitaiStream io = M_Parent.Blocks[0].M_Io;
                    long _pos = io.Pos;
                    io.Seek(4);
                    _blocks0B = io.ReadU1();
                    io.Seek(_pos);
                    return _blocks0B;
                }
            }
            private bool f_blocks1B;
            private byte _blocks1B;
            public byte Blocks1B
            {
                get
                {
                    if (f_blocks1B)
                        return _blocks1B;
                    f_blocks1B = true;
                    KaitaiStream io = M_Parent.Blocks[1].M_Io;
                    long _pos = io.Pos;
                    io.Seek(4);
                    _blocks1B = io.ReadU1();
                    io.Seek(_pos);
                    return _blocks1B;
                }
            }
            private byte _dummy;
            private ProcessRepeatUsertypeDynargCustom m_root;
            private ProcessRepeatUsertypeDynargCustom m_parent;
            public byte Dummy { get { return _dummy; } }
            public ProcessRepeatUsertypeDynargCustom M_Root { get { return m_root; } }
            public ProcessRepeatUsertypeDynargCustom M_Parent { get { return m_parent; } }
        }
        private List<Block> _blocks;
        private BlocksBWrapper _blocksB;
        private ProcessRepeatUsertypeDynargCustom m_root;
        private KaitaiStruct m_parent;
        private List<byte[]> __raw_blocks;
        private List<byte[]> __raw__raw_blocks;
        public List<Block> Blocks { get { return _blocks; } }
        public BlocksBWrapper BlocksB { get { return _blocksB; } }
        public ProcessRepeatUsertypeDynargCustom M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        public List<byte[]> M_RawBlocks { get { return __raw_blocks; } }
        public List<byte[]> M_RawM_RawBlocks { get { return __raw__raw_blocks; } }
    }
}
