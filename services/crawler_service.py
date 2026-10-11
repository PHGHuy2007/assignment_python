from abc import ABC, abstractmethod


class CrawlerService(ABC):

    @abstractmethod
    def crawl_fresh_links(self):
        pass

    @abstractmethod
    def crawl_link_detail(self):
        pass