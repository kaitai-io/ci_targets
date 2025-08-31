// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class InstanceIoUserEarlier : KaitaiStruct
    {
        public static InstanceIoUserEarlier FromFile(string fileName)
        {
            return new InstanceIoUserEarlier(new KaitaiStream(fileName));
        }

        public InstanceIoUserEarlier(KaitaiStream p__io, KaitaiStruct p__parent = null, InstanceIoUserEarlier p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            f_aMid = false;
            f_bMid = false;
            _read();
        }
        private void _read()
        {
            __raw_sizedA = m_io.ReadBytes(6);
            var io___raw_sizedA = new KaitaiStream(__raw_sizedA);
            _sizedA = new Slot(io___raw_sizedA, this, m_root);
            __raw_sizedB = m_io.ReadBytes(6);
            var io___raw_sizedB = new KaitaiStream(__raw_sizedB);
            _sizedB = new Slot(io___raw_sizedB, this, m_root);
            _intoB = new Foo(m_io, this, m_root);
            _intoASkipped = new Foo(m_io, this, m_root);
            _intoA = new Foo(m_io, this, m_root);
            _lastAccessor = new Baz(m_io, this, m_root);
        }
        public partial class Baz : KaitaiStruct
        {
            public static Baz FromFile(string fileName)
            {
                return new Baz(new KaitaiStream(fileName));
            }

            public Baz(KaitaiStream p__io, InstanceIoUserEarlier p__parent = null, InstanceIoUserEarlier p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                if (M_Parent.IntoB.Inst.Last == 89) {
                    _v = m_io.ReadU1();
                }
            }
            private byte? _v;
            private InstanceIoUserEarlier m_root;
            private InstanceIoUserEarlier m_parent;
            public byte? V { get { return _v; } }
            public InstanceIoUserEarlier M_Root { get { return m_root; } }
            public InstanceIoUserEarlier M_Parent { get { return m_parent; } }
        }
        public partial class Foo : KaitaiStruct
        {
            public static Foo FromFile(string fileName)
            {
                return new Foo(new KaitaiStream(fileName));
            }

            public Foo(KaitaiStream p__io, InstanceIoUserEarlier p__parent = null, InstanceIoUserEarlier p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                f_inst = false;
                _read();
            }
            private void _read()
            {
                _indicator = m_io.ReadU1();
                if ( ((Inst.M_Io.Size != 0) && (Inst.Content == 102)) ) {
                    _bar = m_io.ReadU1();
                }
            }
            private bool f_inst;
            private Slot _inst;
            public Slot Inst
            {
                get
                {
                    if (f_inst)
                        return _inst;
                    f_inst = true;
                    KaitaiStream io = (Indicator == 202 ? M_Parent.SizedB.M_Io : M_Parent.SizedA.M_Io);
                    long _pos = io.Pos;
                    io.Seek(1);
                    __raw_inst = io.ReadBytes((M_Io.Pos != 14 ? 4 : 0));
                    var io___raw_inst = new KaitaiStream(__raw_inst);
                    _inst = new Slot(io___raw_inst, this, m_root);
                    io.Seek(_pos);
                    return _inst;
                }
            }
            private byte _indicator;
            private byte? _bar;
            private InstanceIoUserEarlier m_root;
            private InstanceIoUserEarlier m_parent;
            private byte[] __raw_inst;
            public byte Indicator { get { return _indicator; } }
            public byte? Bar { get { return _bar; } }
            public InstanceIoUserEarlier M_Root { get { return m_root; } }
            public InstanceIoUserEarlier M_Parent { get { return m_parent; } }
            public byte[] M_RawInst { get { return __raw_inst; } }
        }
        public partial class Slot : KaitaiStruct
        {
            public static Slot FromFile(string fileName)
            {
                return new Slot(new KaitaiStream(fileName));
            }

            public Slot(KaitaiStream p__io, KaitaiStruct p__parent = null, InstanceIoUserEarlier p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                f_last = false;
                _read();
            }
            private void _read()
            {
                if (M_Io.Size != 0) {
                    _content = m_io.ReadU1();
                }
            }
            private bool f_last;
            private byte? _last;
            public byte? Last
            {
                get
                {
                    if (f_last)
                        return _last;
                    f_last = true;
                    if (M_Io.Size != 0) {
                        long _pos = m_io.Pos;
                        m_io.Seek(M_Io.Size - 1);
                        _last = m_io.ReadU1();
                        m_io.Seek(_pos);
                    }
                    return _last;
                }
            }
            private byte? _content;
            private InstanceIoUserEarlier m_root;
            private KaitaiStruct m_parent;
            public byte? Content { get { return _content; } }
            public InstanceIoUserEarlier M_Root { get { return m_root; } }
            public KaitaiStruct M_Parent { get { return m_parent; } }
        }
        private bool f_aMid;
        private ushort _aMid;
        public ushort AMid
        {
            get
            {
                if (f_aMid)
                    return _aMid;
                f_aMid = true;
                KaitaiStream io = IntoA.Inst.M_Io;
                long _pos = io.Pos;
                io.Seek(1);
                _aMid = io.ReadU2le();
                io.Seek(_pos);
                return _aMid;
            }
        }
        private bool f_bMid;
        private ushort _bMid;
        public ushort BMid
        {
            get
            {
                if (f_bMid)
                    return _bMid;
                f_bMid = true;
                KaitaiStream io = IntoB.Inst.M_Io;
                long _pos = io.Pos;
                io.Seek(1);
                _bMid = io.ReadU2le();
                io.Seek(_pos);
                return _bMid;
            }
        }
        private Slot _sizedA;
        private Slot _sizedB;
        private Foo _intoB;
        private Foo _intoASkipped;
        private Foo _intoA;
        private Baz _lastAccessor;
        private InstanceIoUserEarlier m_root;
        private KaitaiStruct m_parent;
        private byte[] __raw_sizedA;
        private byte[] __raw_sizedB;
        public Slot SizedA { get { return _sizedA; } }
        public Slot SizedB { get { return _sizedB; } }
        public Foo IntoB { get { return _intoB; } }
        public Foo IntoASkipped { get { return _intoASkipped; } }
        public Foo IntoA { get { return _intoA; } }
        public Baz LastAccessor { get { return _lastAccessor; } }
        public InstanceIoUserEarlier M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        public byte[] M_RawSizedA { get { return __raw_sizedA; } }
        public byte[] M_RawSizedB { get { return __raw_sizedB; } }
    }
}
