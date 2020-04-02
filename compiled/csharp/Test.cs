// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;

namespace Kaitai
{
    public partial class Test : KaitaiStruct
    {
        public static Test FromFile(string fileName)
        {
            return new Test(new KaitaiStream(fileName));
        }

        public Test(KaitaiStream p__io, KaitaiStruct p__parent = null, Test p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _seqBlock = new Test.MyType(2)(m_io);
        }
        public partial class MyType : KaitaiStruct
        {
            public MyType(int p_repeatCount, KaitaiStream p__io, KaitaiStruct p__parent = null, Test p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _repeatCount = p_repeatCount;
                _read();
            }
            private void _read()
            {
                _world = m_io.ReadS4be();
                _repeatedThing = new List<int>((int) (RepeatCount));
                for (var i = 0; i < RepeatCount; i++)
                {
                    _repeatedThing.Add(m_io.ReadS4be());
                }
            }
            private int _world;
            private List<int> _repeatedThing;
            private int _repeatCount;
            private Test m_root;
            private KaitaiStruct m_parent;
            public int World { get { return _world; } }
            public List<int> RepeatedThing { get { return _repeatedThing; } }
            public int RepeatCount { get { return _repeatCount; } }
            public Test M_Root { get { return m_root; } }
            public KaitaiStruct M_Parent { get { return m_parent; } }
        }
        private Test.MyType(2) _seqBlock;
        private Test m_root;
        private KaitaiStruct m_parent;
        public Test.MyType(2) SeqBlock { get { return _seqBlock; } }
        public Test M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
