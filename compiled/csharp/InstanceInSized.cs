// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class InstanceInSized : KaitaiStruct
    {
        public static InstanceInSized FromFile(string fileName)
        {
            return new InstanceInSized(new KaitaiStream(fileName));
        }

        public InstanceInSized(KaitaiStream p__io, KaitaiStruct p__parent = null, InstanceInSized p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            __raw_cont = m_io.ReadBytes(16);
            var io___raw_cont = new KaitaiStream(__raw_cont);
            _cont = new Wrapper(io___raw_cont, this, m_root);
        }
        public partial class Bar : KaitaiStruct
        {
            public static Bar FromFile(string fileName)
            {
                return new Bar(new KaitaiStream(fileName));
            }

            public Bar(KaitaiStream p__io, InstanceInSized.Wrapper p__parent = null, InstanceInSized p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                f_inst = false;
                _read();
            }
            private void _read()
            {
                _seqF = m_io.ReadU1();
            }
            private bool f_inst;
            private byte[] _inst;
            public byte[] Inst
            {
                get
                {
                    if (f_inst)
                        return _inst;
                    f_inst = true;
                    long _pos = m_io.Pos;
                    m_io.Seek(4 + 1);
                    _inst = m_io.ReadBytes(3);
                    m_io.Seek(_pos);
                    return _inst;
                }
            }
            private byte _seqF;
            private InstanceInSized m_root;
            private InstanceInSized.Wrapper m_parent;
            public byte SeqF { get { return _seqF; } }
            public InstanceInSized M_Root { get { return m_root; } }
            public InstanceInSized.Wrapper M_Parent { get { return m_parent; } }
        }
        public partial class Baz : KaitaiStruct
        {
            public static Baz FromFile(string fileName)
            {
                return new Baz(new KaitaiStream(fileName));
            }

            public Baz(KaitaiStream p__io, InstanceInSized.Wrapper p__parent = null, InstanceInSized p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                f_inst = false;
                _read();
            }
            private void _read()
            {
                _seqF = m_io.ReadU1();
            }
            private bool f_inst;
            private byte[] _inst;
            public byte[] Inst
            {
                get
                {
                    if (f_inst)
                        return _inst;
                    f_inst = true;
                    long _pos = m_io.Pos;
                    m_io.Seek(8 + 1);
                    _inst = m_io.ReadBytes(3);
                    m_io.Seek(_pos);
                    return _inst;
                }
            }
            private byte _seqF;
            private InstanceInSized m_root;
            private InstanceInSized.Wrapper m_parent;
            public byte SeqF { get { return _seqF; } }
            public InstanceInSized M_Root { get { return m_root; } }
            public InstanceInSized.Wrapper M_Parent { get { return m_parent; } }
        }
        public partial class Qux : KaitaiStruct
        {
            public static Qux FromFile(string fileName)
            {
                return new Qux(new KaitaiStream(fileName));
            }

            public Qux(KaitaiStream p__io, InstanceInSized.Wrapper p__parent = null, InstanceInSized p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                f_instInvoked = false;
                f_instUnusedBySeq = false;
                _read();
            }
            private void _read()
            {
                if (InstInvoked > 0) {
                    _seqF = m_io.ReadU1();
                }
            }
            private bool f_instInvoked;
            private byte _instInvoked;
            public byte InstInvoked
            {
                get
                {
                    if (f_instInvoked)
                        return _instInvoked;
                    f_instInvoked = true;
                    long _pos = m_io.Pos;
                    m_io.Seek(M_Io.Pos + 1);
                    _instInvoked = m_io.ReadU1();
                    m_io.Seek(_pos);
                    return _instInvoked;
                }
            }
            private bool f_instUnusedBySeq;
            private byte[] _instUnusedBySeq;
            public byte[] InstUnusedBySeq
            {
                get
                {
                    if (f_instUnusedBySeq)
                        return _instUnusedBySeq;
                    f_instUnusedBySeq = true;
                    long _pos = m_io.Pos;
                    m_io.Seek(M_Io.Pos + 1);
                    _instUnusedBySeq = m_io.ReadBytes(2);
                    m_io.Seek(_pos);
                    return _instUnusedBySeq;
                }
            }
            private byte? _seqF;
            private InstanceInSized m_root;
            private InstanceInSized.Wrapper m_parent;
            public byte? SeqF { get { return _seqF; } }
            public InstanceInSized M_Root { get { return m_root; } }
            public InstanceInSized.Wrapper M_Parent { get { return m_parent; } }
        }
        public partial class Wrapper : KaitaiStruct
        {
            public static Wrapper FromFile(string fileName)
            {
                return new Wrapper(new KaitaiStream(fileName));
            }

            public Wrapper(KaitaiStream p__io, InstanceInSized p__parent = null, InstanceInSized p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                f_instInStream = false;
                f_instSized = false;
                _read();
            }
            private void _read()
            {
                __raw_seqSized = m_io.ReadBytes(4);
                var io___raw_seqSized = new KaitaiStream(__raw_seqSized);
                _seqSized = new Qux(io___raw_seqSized, this, m_root);
                _seqInStream = new Bar(m_io, this, m_root);
            }
            private bool f_instInStream;
            private Baz _instInStream;
            public Baz InstInStream
            {
                get
                {
                    if (f_instInStream)
                        return _instInStream;
                    f_instInStream = true;
                    long _pos = m_io.Pos;
                    m_io.Seek(M_Io.Pos + 3);
                    _instInStream = new Baz(m_io, this, m_root);
                    m_io.Seek(_pos);
                    return _instInStream;
                }
            }
            private bool f_instSized;
            private Qux _instSized;
            public Qux InstSized
            {
                get
                {
                    if (f_instSized)
                        return _instSized;
                    f_instSized = true;
                    long _pos = m_io.Pos;
                    m_io.Seek(M_Io.Pos + 7);
                    __raw_instSized = m_io.ReadBytes(4);
                    var io___raw_instSized = new KaitaiStream(__raw_instSized);
                    _instSized = new Qux(io___raw_instSized, this, m_root);
                    m_io.Seek(_pos);
                    return _instSized;
                }
            }
            private Qux _seqSized;
            private Bar _seqInStream;
            private InstanceInSized m_root;
            private InstanceInSized m_parent;
            private byte[] __raw_seqSized;
            private byte[] __raw_instSized;
            public Qux SeqSized { get { return _seqSized; } }
            public Bar SeqInStream { get { return _seqInStream; } }
            public InstanceInSized M_Root { get { return m_root; } }
            public InstanceInSized M_Parent { get { return m_parent; } }
            public byte[] M_RawSeqSized { get { return __raw_seqSized; } }
            public byte[] M_RawInstSized { get { return __raw_instSized; } }
        }
        private Wrapper _cont;
        private InstanceInSized m_root;
        private KaitaiStruct m_parent;
        private byte[] __raw_cont;
        public Wrapper Cont { get { return _cont; } }
        public InstanceInSized M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        public byte[] M_RawCont { get { return __raw_cont; } }
    }
}
