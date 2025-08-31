// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;

namespace Kaitai
{
    public partial class ProcessRepeatUsertypeDynargRotate : KaitaiStruct
    {
        public static ProcessRepeatUsertypeDynargRotate FromFile(string fileName)
        {
            return new ProcessRepeatUsertypeDynargRotate(new KaitaiStream(fileName));
        }

        public ProcessRepeatUsertypeDynargRotate(KaitaiStream p__io, KaitaiStruct p__parent = null, ProcessRepeatUsertypeDynargRotate p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            __raw_blocksRol = new List<byte[]>();
            __raw__raw_blocksRol = new List<byte[]>();
            _blocksRol = new List<Block>();
            for (var i = 0; i < 2; i++)
            {
                __raw__raw_blocksRol.Add(m_io.ReadBytes(3));
                __raw_blocksRol.Add(m_io.ProcessRotateLeft(__raw__raw_blocksRol[__raw__raw_blocksRol.Count - 1], M_Io.Pos - 4 * i, 1));
                var io___raw_blocksRol = new KaitaiStream(__raw_blocksRol[__raw_blocksRol.Count - 1]);
                _blocksRol.Add(new Block(io___raw_blocksRol, this, m_root));
            }
            __raw_blocksRor = new List<byte[]>();
            __raw__raw_blocksRor = new List<byte[]>();
            _blocksRor = new List<Block>();
            for (var i = 0; i < 3; i++)
            {
                __raw__raw_blocksRor.Add(m_io.ReadBytes(3));
                __raw_blocksRor.Add(m_io.ProcessRotateLeft(__raw__raw_blocksRor[__raw__raw_blocksRor.Count - 1], 8 - ((M_Io.Pos - 6) - 4 * i), 1));
                var io___raw_blocksRor = new KaitaiStream(__raw_blocksRor[__raw_blocksRor.Count - 1]);
                _blocksRor.Add(new Block(io___raw_blocksRor, this, m_root));
            }
            _blocksB = new BlocksBWrapper(m_io, this, m_root);
        }
        public partial class Block : KaitaiStruct
        {
            public static Block FromFile(string fileName)
            {
                return new Block(new KaitaiStream(fileName));
            }

            public Block(KaitaiStream p__io, ProcessRepeatUsertypeDynargRotate p__parent = null, ProcessRepeatUsertypeDynargRotate p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _a = m_io.ReadU2le();
            }
            private ushort _a;
            private ProcessRepeatUsertypeDynargRotate m_root;
            private ProcessRepeatUsertypeDynargRotate m_parent;
            public ushort A { get { return _a; } }
            public ProcessRepeatUsertypeDynargRotate M_Root { get { return m_root; } }
            public ProcessRepeatUsertypeDynargRotate M_Parent { get { return m_parent; } }
        }
        public partial class BlocksBWrapper : KaitaiStruct
        {
            public static BlocksBWrapper FromFile(string fileName)
            {
                return new BlocksBWrapper(new KaitaiStream(fileName));
            }

            public BlocksBWrapper(KaitaiStream p__io, ProcessRepeatUsertypeDynargRotate p__parent = null, ProcessRepeatUsertypeDynargRotate p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                f_blocksRol0B = false;
                f_blocksRol1B = false;
                f_blocksRor0B = false;
                f_blocksRor1B = false;
                f_blocksRor2B = false;
                _read();
            }
            private void _read()
            {
                _dummy = m_io.ReadU1();
            }
            private bool f_blocksRol0B;
            private byte _blocksRol0B;
            public byte BlocksRol0B
            {
                get
                {
                    if (f_blocksRol0B)
                        return _blocksRol0B;
                    f_blocksRol0B = true;
                    KaitaiStream io = M_Parent.BlocksRol[0].M_Io;
                    long _pos = io.Pos;
                    io.Seek(2);
                    _blocksRol0B = io.ReadU1();
                    io.Seek(_pos);
                    return _blocksRol0B;
                }
            }
            private bool f_blocksRol1B;
            private byte _blocksRol1B;
            public byte BlocksRol1B
            {
                get
                {
                    if (f_blocksRol1B)
                        return _blocksRol1B;
                    f_blocksRol1B = true;
                    KaitaiStream io = M_Parent.BlocksRol[1].M_Io;
                    long _pos = io.Pos;
                    io.Seek(2);
                    _blocksRol1B = io.ReadU1();
                    io.Seek(_pos);
                    return _blocksRol1B;
                }
            }
            private bool f_blocksRor0B;
            private byte _blocksRor0B;
            public byte BlocksRor0B
            {
                get
                {
                    if (f_blocksRor0B)
                        return _blocksRor0B;
                    f_blocksRor0B = true;
                    KaitaiStream io = M_Parent.BlocksRor[0].M_Io;
                    long _pos = io.Pos;
                    io.Seek(2);
                    _blocksRor0B = io.ReadU1();
                    io.Seek(_pos);
                    return _blocksRor0B;
                }
            }
            private bool f_blocksRor1B;
            private byte _blocksRor1B;
            public byte BlocksRor1B
            {
                get
                {
                    if (f_blocksRor1B)
                        return _blocksRor1B;
                    f_blocksRor1B = true;
                    KaitaiStream io = M_Parent.BlocksRor[1].M_Io;
                    long _pos = io.Pos;
                    io.Seek(2);
                    _blocksRor1B = io.ReadU1();
                    io.Seek(_pos);
                    return _blocksRor1B;
                }
            }
            private bool f_blocksRor2B;
            private byte _blocksRor2B;
            public byte BlocksRor2B
            {
                get
                {
                    if (f_blocksRor2B)
                        return _blocksRor2B;
                    f_blocksRor2B = true;
                    KaitaiStream io = M_Parent.BlocksRor[2].M_Io;
                    long _pos = io.Pos;
                    io.Seek(2);
                    _blocksRor2B = io.ReadU1();
                    io.Seek(_pos);
                    return _blocksRor2B;
                }
            }
            private byte _dummy;
            private ProcessRepeatUsertypeDynargRotate m_root;
            private ProcessRepeatUsertypeDynargRotate m_parent;
            public byte Dummy { get { return _dummy; } }
            public ProcessRepeatUsertypeDynargRotate M_Root { get { return m_root; } }
            public ProcessRepeatUsertypeDynargRotate M_Parent { get { return m_parent; } }
        }
        private List<Block> _blocksRol;
        private List<Block> _blocksRor;
        private BlocksBWrapper _blocksB;
        private ProcessRepeatUsertypeDynargRotate m_root;
        private KaitaiStruct m_parent;
        private List<byte[]> __raw_blocksRol;
        private List<byte[]> __raw__raw_blocksRol;
        private List<byte[]> __raw_blocksRor;
        private List<byte[]> __raw__raw_blocksRor;
        public List<Block> BlocksRol { get { return _blocksRol; } }
        public List<Block> BlocksRor { get { return _blocksRor; } }
        public BlocksBWrapper BlocksB { get { return _blocksB; } }
        public ProcessRepeatUsertypeDynargRotate M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        public List<byte[]> M_RawBlocksRol { get { return __raw_blocksRol; } }
        public List<byte[]> M_RawM_RawBlocksRol { get { return __raw__raw_blocksRol; } }
        public List<byte[]> M_RawBlocksRor { get { return __raw_blocksRor; } }
        public List<byte[]> M_RawM_RawBlocksRor { get { return __raw__raw_blocksRor; } }
    }
}
